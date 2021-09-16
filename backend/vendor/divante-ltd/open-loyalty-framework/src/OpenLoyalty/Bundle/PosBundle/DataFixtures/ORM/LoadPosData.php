<?php
/**
 * Copyright © 2017 Divante, Inc. All rights reserved.
 * See LICENSE for license details.
 */
namespace OpenLoyalty\Bundle\PosBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use OpenLoyalty\Component\Pos\Domain\Command\CreatePos;
use OpenLoyalty\Component\Pos\Domain\PosId;
use Symfony\Bridge\Doctrine\Tests\Fixtures\ContainerAwareFixture;

/**
 * Class LoadPosData.
 */
class LoadPosData extends ContainerAwareFixture implements OrderedFixtureInterface
{
    const POS_ID = '00000000-0000-474c-1111-b0dd880c07e2';
    const POS2_ID = '00000000-0000-474c-1111-b0dd880c07e3';

    public function load(ObjectManager $manager)
    {
        $commandBus = $this->container->get('broadway.command_handling.command_bus');
        $commandBus->dispatch(
            new CreatePos(new PosId(static::POS_ID), $this->getPosData())
        );

        // $posData = $this->getPosData();
        // $posData['name'] = 'Hello POS';
        // $posData['location']['city'] = 'Jakarta';
        // $posData['identifier'] = 'hello_pos';

        // $commandBus->dispatch(
        //     new CreatePos(new PosId(static::POS2_ID), $posData)
        // );
    }

    protected function getPosData()
    {
        return [
            'name' => 'Hello POS',
            'identifier' => 'hello_pos',
            'description' => 'POS from PT. Hello World!',
            'location' => $this->getLocationData(),
        ];
    }

    protected function getLocationData()
    {
        return [
            'street' => 'Sudirman',
            'address1' => '21',
            'city' => 'Jakarta',
            'country' => 'ID',
            'postal' => '10220',
            'province' => 'DKI Jakarta',
            'lat' => '-6.227777',
            'long' => '106.810544',
        ];
    }

    /**
     * Get the order of this fixture.
     *
     * @return int
     */
    public function getOrder()
    {
        return 0;
    }
}
