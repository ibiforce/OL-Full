<?php
/**
 * Copyright © 2017 Divante, Inc. All rights reserved.
 * See LICENSE for license details.
 */
namespace OpenLoyalty\Bundle\UserBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use OpenLoyalty\Bundle\LevelBundle\DataFixtures\ORM\LoadLevelData;
use OpenLoyalty\Bundle\PosBundle\DataFixtures\ORM\LoadPosData;
use OpenLoyalty\Bundle\UserBundle\Entity\Customer;
use OpenLoyalty\Bundle\UserBundle\Entity\Seller;
use OpenLoyalty\Bundle\UserBundle\Entity\Status;
use OpenLoyalty\Component\Customer\Domain\Command\ActivateCustomer;
use OpenLoyalty\Component\Customer\Domain\Command\AssignPosToCustomer;
use OpenLoyalty\Component\Customer\Domain\Command\MoveCustomerToLevel;
use OpenLoyalty\Component\Customer\Domain\Command\RegisterCustomer;
use OpenLoyalty\Component\Customer\Domain\Command\UpdateCustomerAddress;
use OpenLoyalty\Component\Customer\Domain\Command\UpdateCustomerDetails;
use OpenLoyalty\Component\Customer\Domain\Command\UpdateCustomerLoyaltyCardNumber;
use OpenLoyalty\Component\Customer\Domain\CustomerId;
use OpenLoyalty\Component\Customer\Domain\LevelId;
use OpenLoyalty\Component\Seller\Domain\Command\ActivateSeller;
use OpenLoyalty\Component\Seller\Domain\Command\RegisterSeller;
use OpenLoyalty\Component\Seller\Domain\PosId;
use OpenLoyalty\Component\Seller\Domain\SellerId;
use Symfony\Component\DependencyInjection\ContainerAwareInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;

class LoadUserData extends AbstractFixture implements FixtureInterface, ContainerAwareInterface, OrderedFixtureInterface
{
    const ADMIN_ID = '22200000-0000-474c-b092-b0dd880c07e2';
    const ADMIN_USERNAME = 'admin';
    const ADMIN_PASSWORD = '12345';

    const USER_USER_ID = '00000000-0000-474c-b092-b0dd880c07e1';
    const USER_EMAIL = 'user@mail.com';
    const USER_USERNAME = 'user@mail.com';
    const USER_PASSWORD = '12345';
    const USER_PHONE_NUMBER = '+48234234000';
    const USER_LOYALTY_CARD_NUMBER = '47834433524';

    const TEST_SELLER_ID = '00000000-0000-474c-b092-b0dd880c07e4';
    const TEST_SELLER_USERNAME = 'john@doe.com';
    const TEST_SELLER_PASSWORD = 'open';

    const USER_COUPON_RETURN_ID = '00000000-0000-474c-b092-b0dd880c07aa';
    const USER_COUPON_RETURN_USERNAME = 'user-return@oloy.com';
    const USER_COUPON_RETURN_PASSWORD = 'loyalty';

    const USER_TRANSFER_1_USER_ID = '00000000-0000-474c-b092-b0dd880c07f3';
    const USER_TRANSFER_1_USERNAME = 'user-transfer-1@oloy.com';
    const USER_TRANSFER_1_PASSWORD = 'loyalty';

    /**
     * @var ContainerInterface
     */
    private $container;

    /**
     * {@inheritdoc}
     */
    public function setContainer(ContainerInterface $container = null)
    {
        $this->container = $container;
    }

    /**
     * {@inheritdoc}
     */
    public function load(ObjectManager $manager)
    {
        $this->loadCustomersData($manager);
        $this->loadForTransferData($manager);
        $this->loadForCouponReturnData($manager);
        $this->loadSeller($manager);
    }

    /**
     * @param ObjectManager $manager
     *
     * @throws \Exception
     */
    protected function loadSeller(ObjectManager $manager)
    {
        $bus = $this->container->get('broadway.command_handling.command_bus');

        $bus->dispatch(
            new RegisterSeller(
                new SellerId(self::TEST_SELLER_ID),
                [
                    'firstName' => 'John',
                    'lastName' => 'Doe',
                    'email' => self::TEST_SELLER_USERNAME,
                    'phone' => '+48123123123',
                    'posId' => new PosId(LoadPosData::POS_ID),
                ]
            )
        );
        $bus->dispatch(new ActivateSeller(new SellerId(self::TEST_SELLER_ID)));
        $user = new Seller(new SellerId(self::TEST_SELLER_ID));
        $user->setEmail(self::TEST_SELLER_USERNAME);
        $user->setIsActive(true);
        $user->addRole($this->getReference('role_seller'));
        $user->setPlainPassword(self::TEST_SELLER_PASSWORD);
        $user->setAllowPointTransfer(true);
        $this->container->get('oloy.user.user_manager')->updateUser($user);
    }

    /**
     * @param ObjectManager $manager
     *
     * @throws \Exception
     */
    protected function loadCustomersData(ObjectManager $manager)
    {
        $bus = $this->container->get('broadway.command_handling.command_bus');

        // USER
        $customerId = new CustomerId(static::USER_USER_ID);
        $command = new RegisterCustomer(
            $customerId,
            $this->getDefaultCustomerData(
                'Customer',
                'One',
                $this::USER_EMAIL,
                $this::USER_PHONE_NUMBER
            )
        );

        $bus->dispatch($command);
        $bus->dispatch(new UpdateCustomerLoyaltyCardNumber($customerId, $this::USER_LOYALTY_CARD_NUMBER));
        $bus->dispatch(new ActivateCustomer($customerId));

        $user = new Customer($customerId);
        $user->setPlainPassword($this::USER_PASSWORD);
        $user->setPhone($command->getCustomerData()['phone']);

        $password = $this->container->get('security.password_encoder')
            ->encodePassword($user, $user->getPlainPassword());

        $user->addRole($this->getReference('role_participant'));
        $user->setPassword($password);
        $user->setIsActive(true);
        $user->setStatus(Status::typeActiveNoCard());

        $user->setEmail($this::USER_USERNAME);
        $manager->persist($user);
        $this->addReference('user-1', $user);

        $manager->persist($user);
        $manager->flush();
    }

    /**
     * @param ObjectManager $manager
     *
     * @throws \Exception
     */
    protected function loadForTransferData(ObjectManager $manager): void
    {
        $bus = $this->container->get('broadway.command_handling.command_bus');
        $users = [
            [static::USER_TRANSFER_1_USER_ID, static::USER_TRANSFER_1_USERNAME, static::USER_TRANSFER_1_PASSWORD],
        ];
        $i = 0;
        foreach ($users as $data) {
            $customerId = new CustomerId($data[$i]);
            $command = new RegisterCustomer(
                $customerId,
                $this->getDefaultCustomerData(
                    'TestUser',
                    'ForTransfersTest',
                    $data[1],
                    '123123231231231236'.$i
                )
            );

            $bus->dispatch($command);
            $bus->dispatch(new ActivateCustomer($customerId));

            $user = new Customer($customerId);
            $user->setPlainPassword($data[2]);
            $user->setPhone($command->getCustomerData()['phone']);

            $password = $this->container->get('security.password_encoder')
                ->encodePassword($user, $user->getPlainPassword());

            $user->addRole($this->getReference('role_participant'));
            $user->setPassword($password);
            $user->setIsActive(true);
            $user->setStatus(Status::typeActiveNoCard());

            $user->setEmail($data[1]);
            $manager->persist($user);
            ++$i;
        }
    }

    /**
     * @param ObjectManager $manager
     *
     * @throws \Exception
     */
    protected function loadForCouponReturnData(ObjectManager $manager): void
    {
        $bus = $this->container->get('broadway.command_handling.command_bus');
        $users = [
            [static::USER_COUPON_RETURN_ID, static::USER_COUPON_RETURN_USERNAME, static::USER_COUPON_RETURN_PASSWORD],
        ];
        $i = 0;
        foreach ($users as $data) {
            $customerId = new CustomerId($data[$i]);
            $command = new RegisterCustomer(
                $customerId,
                $this->getDefaultCustomerData(
                    'TestUser',
                    'ForCouponTest',
                    $data[1],
                    '1231232312312312376'.$i
                )
            );

            $bus->dispatch($command);
            $bus->dispatch(new ActivateCustomer($customerId));

            $user = new Customer($customerId);
            $user->setPlainPassword($data[2]);
            $user->setPhone($command->getCustomerData()['phone']);

            $password = $this->container->get('security.password_encoder')
                ->encodePassword($user, $user->getPlainPassword());

            $user->addRole($this->getReference('role_participant'));
            $user->setPassword($password);
            $user->setIsActive(true);
            $user->setStatus(Status::typeActiveNoCard());

            $user->setEmail($data[1]);
            $manager->persist($user);
            ++$i;
        }
    }

    /**
     * @param string $firstName
     * @param string $lastName
     * @param string $email
     * @param string $phone
     *
     * @return array
     */
    public static function getDefaultCustomerData(
        $firstName,
        $lastName,
        $email,
        $phone = '00000'
    ) {
        return [
            'firstName' => $firstName,
            'lastName' => $lastName,
            'gender' => 'male',
            'phone' => $phone,
            'email' => $email,
            'birthDate' => 653011200,
            'createdAt' => 1470646394,
            'company' => [
                'name' => 'test',
                'nip' => 'nip',
            ],
            'loyaltyCardNumber' => '000000',
            'address' => [
                'street' => 'Dmowskiego',
                'address1' => '21',
                'city' => 'Wrocław',
                'country' => 'pl',
                'postal' => '50-300',
                'province' => 'Dolnośląskie',
            ],
            'status' => [
                'type' => 'new',
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function getOrder()
    {
        return 2;
    }
}
