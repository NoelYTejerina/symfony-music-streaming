<?php

namespace App\Controller;

use App\Repository\PlaylistRepository;
use App\Repository\UsuarioRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EstadisticasController extends AbstractController
{
   #[Route('/manager', name: 'estadisticas')]
public function index(
    PlaylistRepository $playlistRepo,
    UsuarioRepository $usuarioRepo
): Response {

    $datos_likes = $playlistRepo->obtenerLikesPorPlaylist();
    $edad_datos = $usuarioRepo->clasificarUsuariosXedad();
    $datos_reproducciones = $playlistRepo->obtenerReproduccionesPorPlaylist();

    return $this->render('estadisticas/index.html.twig', [
        'datos_likes' => $datos_likes,
        'edad_datos' => $edad_datos,
        'datos_reproducciones' => $datos_reproducciones,
    ]);
}

}

