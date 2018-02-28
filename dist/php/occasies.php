<?php
/*TODO: website mag alleen werken als je deployed.
Dus mappen waaraan niets aangepast moet worden in de dist map zetten, de rest erna verplaatsen met gulp en dan kijken of site werkt.*/
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

	$instruments = "";
	if (!empty($_GET['hout']) || !empty($_GET['koper'])) {
		$hout = $_GET['hout'];
		$koper = $_GET['koper'];

		$sqlInstruments = "SELECT * FROM instruments WHERE instruments.subtype in ('$hout', '$koper')";
		$stmt = $conn->query($sqlInstruments);
		$instruments = $stmt->fetchAll();

		if($koper == "-1" && $hout = "all"){
			$sqlInstruments = "SELECT * FROM instruments WHERE instruments.type = 'houtblazer'";
			$stmt = $conn->query($sqlInstruments);
			$instruments = $stmt->fetchAll();
		}
		if($hout == "all" && $koper = "all"){
			$sqlInstruments = "SELECT * FROM instruments WHERE instruments.type IN ('houtblazer, koperblazer')";
			$stmt = $conn->query($sqlInstruments);
			$instruments = $stmt->fetchAll();
		}
		if($koper == "all" && $hout = "-1"){
			$sqlInstruments = "SELECT * FROM instruments WHERE instruments.type = 'koperblazer'";
			$stmt = $conn->query($sqlInstruments);
			$instruments = $stmt->fetchAll();
		}
	}
	else{
		/*Get al instruments*/
		$sqlInstruments = "SELECT * FROM instruments";
		$stmt = $conn->query($sqlInstruments);
		$instruments = $stmt->fetchAll();
	}


   /*$sqlInstrumentsPhotos = "SELECT photos.filename, photos.instrument_id FROM photos";
	$instrumentsPhotos = $conn->query($sqlInstrumentsPhotos);*/


/*TODO: in php code photos linken aan instrument*/
	/*Get all photos*/
	$sqlPhotos = "SELECT * FROM photos";
	$stmt = $conn->query($sqlPhotos);
	$photos = $stmt->fetchAll();

	for($x = 0; $x < count($instruments); $x++){
		$instruments[$x]['photos'] = array();

		foreach ($photos as $photo){
			if($photo['instrument_id'] == $instruments[$x]['id']){
				array_push($instruments[$x]['photos'], $photo);
			}
		}
	}

	/*Get all banner photos*/
	$sqlBannerPhotos = "SELECT * FROM bannerphotos";
	$bannerPhotos = $conn->query($sqlBannerPhotos);

	/*Get all koperblazers*/
	$sqlKoperBlazer = "SELECT DISTINCT subtype FROM instruments where instruments.type = 'koperblazer'";
	$koperBlazer = $conn->query($sqlKoperBlazer);

	/*Get all houtblazers*/
	$sqlHoutBlazer = "SELECT DISTINCT subtype FROM instruments where instruments.type = 'houtblazer'";
	$houtBlazer = $conn->query($sqlHoutBlazer);

	$loader = new Twig_Loader_Filesystem(__DIR__ . '/../views');
	$twig = new Twig_Environment($loader, array(
		'cache' => __DIR__ . '/cache',
		'auto_reload' => true
	));



	$tpl = $twig->loadtemplate('occasies.twig');
	echo $tpl->render(array(
		'instruments' => $instruments,
		'photos' => $photos,
		'bannerPhotos' => $bannerPhotos,
		'koperblazers' => $koperBlazer,
		'houtblazers' => $houtBlazer,
	));

?>
