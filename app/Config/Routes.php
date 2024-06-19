<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->post('/', 'Home::viewDiagnosis');
$routes->get('/penyakit', 'Home::viewPenyakit');
$routes->get('/gejala', 'Home::viewGejala');
