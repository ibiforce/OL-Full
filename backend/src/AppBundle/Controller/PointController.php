<?php

namespace AppBundle\Controller;

use FOS\RestBundle\Controller\Annotations\Route;
use FOS\RestBundle\View\View;
use Nelmio\ApiDocBundle\Annotation\ApiDoc;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\HttpFoundation\Response;

class PointController extends FOSRestController
{
    /**
     * @Route(name="app.point.list", path="/point/list")
     * @Method("POST")
     *
     * @ApiDoc(
     *     name="Point list",
     *     section="Point",
     *     parameters={
     *          {"name"="page", "dataType"="integer", "required"=false, "description"="page data"},
     *     },
     *     input={"class" = "OpenLoyalty\Bundle\PointsBundle\Form\Type\AddPointsFormType", "name" = "transfer"},
     *     statusCodes={
     *       200="Returned when successful",
     *     }
     * )
     *
     * @param Request $request
     *
     * @return View
     */
    public function getListAction(Request $request)
    {
        // return 'list';
        return $this->view(
            [
                'point1' => 1,
                'point2' => 2,
            ],
            Response::HTTP_OK
        );
    }

    /**
     * @Route(name="app.point.detail", path="/point/detail")
     * @Method("GET")
     *
     * @ApiDoc(
     *     name="Point detail",
     *     section="Point",
     *     statusCodes={
     *       200="Returned when created",
     *     }
     * )
     *
     *
     * @return string
     */
    public function detailAction()
    {
        return 'detail'; //$this->view(['data' => ['data']]);
    }
}
