<?php
	require_once __DIR__.'/../../vendor/autoload.php';
	use Doctrine\DBAL\DriverManager;
	use Doctrine\DBAL\Configuration;

	$conn = DriverManager::getConnection(array(
    'dbname' => 'occasies',
    'user' => 'root',
    'password' => '',
    'host' => 'localhost',
    'driver' => 'pdo_mysql',
    'charset' => 'utf8',
	), $config = new Configuration);

	$sqlInstruments = "SELECT * FROM instruments";
	$instruments = $conn->query($sqlInstruments);

	$sqlPhotos = "SELECT * FROM photos";
	$photos = $conn->query($sqlPhotos);

	$loader = new Twig_Loader_Filesystem(__DIR__ . '/../../src/views');
	$twig = new Twig_Environment($loader, array(
		'cache' => __DIR__ . '/cache',
		'auto_reload' => true
	));

	$tpl = $twig->loadtemplate('occasies.twig');
	echo $tpl->render(array(
		'instruments' => $instruments,
		'photos' => $photos,
	));

?>
