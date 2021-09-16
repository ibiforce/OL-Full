<?php
/**
 * Copyright © 2017 Divante, Inc. All rights reserved.
 * See LICENSE for license details.
 */
namespace OpenLoyalty\Bundle\LevelBundle\DataFixtures\ORM;

use Broadway\CommandHandling\SimpleCommandBus;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use OpenLoyalty\Component\Level\Domain\Command\ActivateLevel;
use OpenLoyalty\Component\Level\Domain\Command\CreateLevel;
use OpenLoyalty\Component\Level\Domain\LevelId;
use Symfony\Bridge\Doctrine\Tests\Fixtures\ContainerAwareFixture;

/**
 * Class LoadLevelData.
 */
class LoadLevelData extends ContainerAwareFixture implements OrderedFixtureInterface
{
    const LEVEL0_ID = 'e82c96cf-32a3-43bd-9034-4df343e50000';
    const LEVEL1_ID = 'e82c96cf-32a3-43bd-9034-4df343e51111';
    const LEVEL2_ID = 'e82c96cf-32a3-43bd-9034-4df343e52222';
    const LEVEL3_ID = 'e82c96cf-32a3-43bd-9034-4df343e53333';
    const LEVEL0_NAME = 'Bronze';
    const LEVEL1_NAME = 'Silver';
    const LEVEL2_NAME = 'Gold';
    const LEVEL3_NAME = 'Platinum';

    public function load(ObjectManager $manager)
    {
        $level0 = [
            'conditionValue' => 0,
            'reward' => [
                'name' => 'DISKON 5%',
                'value' => 0.05,
                'code' => 'DISKON5',
            ],
            'translations' => [
                'en' => [
                    'name' => self::LEVEL0_NAME,
                    'description' => 'bronze level',
                ],
                // 'pl' => [
                //     'name' => 'poziom0',
                //     'description' => 'przykładowy poziom',
                // ],
            ],
        ];

        $level1 = [
            'conditionValue' => 100,
            'reward' => [
                'name' => 'DISKON 10%',
                'value' => 0.1,
                'code' => 'DISKON10',
            ],
            'translations' => [
                'en' => [
                    'name' => self::LEVEL1_NAME,
                    'description' => 'silver level',
                ],
                // 'pl' => [
                //     'name' => 'poziom1',
                //     'description' => 'przykładowy poziom',
                // ],
            ],
        ];

        $level2 = [
            'conditionValue' => 500,
            'reward' => [
                'name' => 'DISKON 20%',
                'value' => 0.2,
                'code' => 'DISKON20',
            ],
            'specialRewards' => [
                0 => [
                    'name' => 'special reward',
                    'value' => 0.22,
                    'code' => 'spec',
                    'startAt' => new \DateTime('2016-10-10'),
                    'endAt' => new \DateTime('2016-11-10'),
                    'active' => true,
                    'id' => 'e82c96cf-32a3-43bd-9034-4df343e5fd00',
                ],
                1 => [
                    'name' => 'special reward 2',
                    'value' => 0.11,
                    'code' => 'spec2',
                    'startAt' => new \DateTime('2016-09-10'),
                    'endAt' => new \DateTime('2016-11-10'),
                    'active' => false,
                    'id' => 'e82c96cf-32a3-43bd-9034-4df343e50094',
                ],
            ],
            'translations' => [
                'en' => [
                    'name' => self::LEVEL2_NAME,
                    'description' => 'gold level',
                ],
                // 'pl' => [
                //     'name' => 'poziom2',
                //     'description' => 'przykładowy poziom',
                // ],
            ],
        ];

        $level3 = [
            'conditionValue' => 1000,
            'reward' => [
                'name' => 'DISKON 30%',
                'value' => 0.3,
                'code' => 'DISKON30',
            ],
            'translations' => [
                'en' => [
                    'name' => self::LEVEL3_NAME,
                    'description' => 'platinum level',
                ],
                // 'pl' => [
                //     'name' => 'poziom2',
                //     'description' => 'przykładowy poziom',
                // ],
            ],
        ];

        /** @var SimpleCommandBus $commandBus */
        $commandBus = $this->container->get('broadway.command_handling.command_bus');
        $commandBus->dispatch(
            new CreateLevel(new LevelId(self::LEVEL0_ID), $level0)
        );
        $commandBus->dispatch(
            new ActivateLevel(new LevelId(self::LEVEL0_ID))
        );
        $commandBus->dispatch(
            new CreateLevel(new LevelId(self::LEVEL1_ID), $level1)
        );
        $commandBus->dispatch(
            new ActivateLevel(new LevelId(self::LEVEL1_ID))
        );
        $commandBus->dispatch(
            new CreateLevel(new LevelId(self::LEVEL2_ID), $level2)
        );
        $commandBus->dispatch(
            new ActivateLevel(new LevelId(self::LEVEL2_ID))
        );
        $commandBus->dispatch(
            new CreateLevel(new LevelId(self::LEVEL3_ID), $level3)
        );
        $commandBus->dispatch(
            new ActivateLevel(new LevelId(self::LEVEL3_ID))
        );
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
