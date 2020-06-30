<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class WildController extends AbstractController
{
    /**
     * @Route("/wild/show/{slug}", requirements={"slug"="[a-z0-9\-\/]+"}, name="wild_show")
     */
    public function show(string $slug = "") : Response
    {
        if(empty($slug)) {
            $slug = "Aucune série sélectionnée, veuillez choisir une série";
        }
        return $this->render('wild/show.html.twig', ['slug' => $slug ]);
    }
}
