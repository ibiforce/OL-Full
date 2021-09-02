<?php

namespace AppBundle\Controller;
use FOS\RestBundle\Controller\Annotations\Route;
use FOS\RestBundle\View\View;
use Nelmio\ApiDocBundle\Annotation\ApiDoc;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;
use FOS\RestBundle\Controller\FOSRestController;

class EarningRuleController extends FOSRestController
{
    /**
     * @Route(name="app.ibagus.list", path="/ibagus/list")
     * @Method("GET")
     *
     * @ApiDoc(
     *     name="New earning rule list",
     *     section="Earning Rule",
     *     statusCodes={
     *       200="Returned when successful",
     *     }
     * )
     *
     * @param Request $request
     *
     * @return View
     */
    public function indexAction(Request $request)
    {
        return $this->view(['data' => ['data']]);
    }
}