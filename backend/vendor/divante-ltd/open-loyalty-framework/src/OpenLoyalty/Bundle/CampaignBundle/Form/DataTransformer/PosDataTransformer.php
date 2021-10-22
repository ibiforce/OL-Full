<?php
/**
 * Copyright © 2017 Divante, Inc. All rights reserved.
 * See LICENSE for license details.
 */
namespace OpenLoyalty\Bundle\CampaignBundle\Form\DataTransformer;

use Doctrine\Common\Collections\ArrayCollection;
use OpenLoyalty\Component\Campaign\Domain\PosId;
use Symfony\Component\Form\DataTransformerInterface;

/**
 * Class PosDataTransformer.
 */
class PosDataTransformer implements DataTransformerInterface
{
    /**
     * {@inheritdoc}
     */
    public function transform($value)
    {
        if ($value == null) {
            return $value;
        }

        $tmp = [];

        if ($value instanceof ArrayCollection || is_array($value)) {
            foreach ($value as $v) {
                if ($v instanceof PosId) {
                    $tmp[] = $v->__toString();
                }
            }
        }

        return $tmp;
    }

    /**
     * {@inheritdoc}
     *
     * @throws AssertionFailedException
     */
    public function reverseTransform($value)
    {
        if ($value == null) {
            return $value;
        }

        $tmp = [];

        if ($value instanceof ArrayCollection || is_array($value)) {
            foreach ($value as $v) {
                $tmp[] = new PosId($v);
            }
        }

        return $tmp;
    }
}
