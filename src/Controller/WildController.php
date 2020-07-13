<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\Program;
use App\Entity\Category;
use App\Entity\Season;
use App\Entity\Episode;
use App\Form\ProgramSearchType;
use App\Form\CategoryType;

/**
 * 
 */

class WildController extends AbstractController
{
    /**
     * Show all rows from Program’s entity
     *
     * @Route("/wild/", name="app_index")
     * @return Response A response instance
     */
    public function index() : Response
    {
        $programs = $this->getDoctrine()->getRepository(Program::class)->findAll();

        if (!$programs) {
            throw $this->createNotFoundException(
            'No program found in program\'s table.'
            );
        }
        $category = new Category();
        $form = $this->createForm(CategoryType::class, $category,
         
        );
    
        return $this->render('wild/index.html.twig', [
            'programs' => $programs,
            'category' => $category,
            'form' => $form->createView(),
            ]);
    }

    /**
     * Getting a program with a formatted slug for title
     * 
     * @param string $slug The slugger
     * @Route("/wild/show/{slug}", requirements={"slug"="[a-z0-9\-\/]+"}, defaults={"slug" = null}, name="wild_show")
     * @return Response
     */
    public function show(?string $slug) : Response
    {
        if (!$slug) {
            throw $this
                ->createNotFoundException('No slug has been sent to find a program in program\'s table.');
        }
        $slug = preg_replace(
            '/-/',
            ' ', ucwords(trim(strip_tags($slug)), "-")
        );
        $program = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findOneBy(['title' => mb_strtolower($slug)]);
        if (!$program) {
            throw $this->createNotFoundException(
                'No program with '.$slug.' title, found in program\'s table.'
            );
        }

        return $this->render('wild/show.html.twig', [
            'program' => $program,
            'slug'  => $slug,
        ]);
    }


    /**
     * 
     * @param string $categName
     * @Route("wild/categ/{categName}", requirements={"categName"="[a-z0-9\-\/]+"}, defaults={"categName" = null}, name="show_category")
     * @return Response
     */
    public function showByCategory(string $categName) : Response
    {
        if (!$categName) {
            throw $this
                ->createNotFoundException('No categ has been sent to find a program in program\'s table.');
        }
        $categName = preg_replace(
            '/-/',
            ' ', ucwords(trim(strip_tags($categName)), "-")
        );
        $category = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findOneBy(['name' => mb_strtolower($categName)]);

        $programs = $this->getDoctrine()
        ->getRepository(Program::class)
        ->findBy(['category' => $category], ['id' => 'DESC'], 3 );

        if (!$categName) {
            throw $this->createNotFoundException(
                'No programs '.$categName.', found in program\'s table.'
            );
        }

        return $this->render('wild/category.html.twig', [
            'programs' => $programs,
            'categName'  => $categName,
        ]);
    }

    /**
     * 
     * @param int $id
     * @Route("wild/program/seasons/{id}", defaults={"id" = null}, name="show_episodes")
     * @return Response
     */
    public function showBySeason(int $id) : Response
    {
        if (!$id) {
            throw $this
                ->createNotFoundException('No id has been sent to find a program in program\'s table.');
        }
        $season = $this->getDoctrine()
        ->getRepository(Season::class)
        ->findOneBy(['id' => ($id)]);

        $program = $season->getProgram();
        $episodes = $season->getEpisodes();

        return $this->render('wild/seasons.html.twig', [
            'season' => $season,
            'episodes'  => $episodes,
            'id' => $id,
            'program' => $program,
        ]);
    }

    /**
     * Getting a program with a formatted slug for title
     * 
     * @param string $slug 
     * @Route("/wild/program/{slug}/", requirements={"slug"="[a-z0-9\-\/]+"}, defaults={"slug" = null}, name="program_show")
     * @return Response
     */
    public function showByProgram(?string $slug) : Response
    {
        if (!$slug) {
            throw $this
                ->createNotFoundException('No slug has been sent to find a program in program\'s table.');
        }
        $slug = preg_replace(
            '/-/',
            ' ', ucwords(trim(strip_tags($slug)), "-")
        );
        $program = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findOneBy(['title' => mb_strtolower($slug)]);
        if (!$program) {
            throw $this->createNotFoundException(
                'No program with '.$slug.' title, found in program\'s table.'
            );
        }

        $seasons = $program->getSeasons();

        return $this->render('wild/programs.html.twig', [
            'program' => $program,
            'slug'  => $slug,
            'seasons' => $seasons,
        ]);
    }

    /**
     * @Route("/wild/{id}", name="episode_show")
     */

    public function showEpisode(episode $episode): Response
    {
        $season = $episode->getSeason();
        $program = $season->getProgram();
        
    return $this->render('wild/program.html.twig', [
        'episode'=>$episode,
        'season'=>$season,
        'program'=>$program,
        ]);
    }

}
