<?php

header('Content-Type: application/json; charset=utf-8');

$json = file_get_contents('php://input');
$data = json_decode($json, true);
$device = $data['device'];
$sender = $data['sender'];
$message = $data['message'];
$member= $data['member']; //group member who send the message
$name = $data['name'];
$location = $data['location'];
//data below will only received by device with all feature package
//start
$url =  $data['url'];
$filename =  $data['filename'];
$extension=  $data['extension'];
//end

function sendFonnte($target, $data) {
	$curl = curl_init();

	curl_setopt_array($curl, array(
	  CURLOPT_URL => "https://api.fonnte.com/send",
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 0,
	  CURLOPT_FOLLOWLOCATION => true,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "POST",
	  CURLOPT_POSTFIELDS => array(
	    	'target' => $target,
	    	'message' => $data['message'],
	    	'url' => $data['url'],
	    	'filename' => $data['filename'],
	    ),
	  CURLOPT_HTTPHEADER => array(
	    "Authorization: 7M#5!x2AFaJqu-5+riFZ"
	  ),
	));

	$response = curl_exec($curl);

	curl_close($curl);

	return $response;
}

//$message=DAFTAR#90123#MINGGUS#JALUR 40 SIKUMANA BARAT LAUT#2003-12-12
//INFO#90123
include"config.php";
$potong=explode("#",$message);
if($potong[0]=="biologi")

{
	$id_pustakawan=$potong[1];
	$anrologi=$potong[2];
	$agronomi=$potong[3];
	$anatomi=$potong[4];
	$bakteriologi=$potong[5];
	$bioinformatika=$potong[6];
	$bioevolusioner=$potong[7];
	$biomolekuler=$potong[8];
	
	$insert=mysqli_query($db,"insert into tb_biologi values('$id_pustakawan','$anrologi','$agronomi','$anatomi','$bakteriologi','$bioinformatika','$bioevolusioner','$biomolekuler')"); 

	
	if($insert)
	{
		$reply = [
		"message" => "Berhasil insert ke DB",
	];
	} else{
		$reply = [
		"message" => "GAGAL insert ke DB",
	];
    }
}
if($potong[0]=="sejarah")
{
    $id_pustakawan=$potong[1];
	$sejarah_indonesia=$potong[2];
	$sejarah_inggris=$potong[3];
	$sejarah_jepang=$potong[4];
	$sejarah_korea=$potong[5];
	$sejarah_belanda=$potong[6];
	$sejarah_portugis=$potong[7];
	$sejarah_mongolia=$potong[8];
	
	$insert=mysqli_query($db,"insert into tb_sejarah values('$id_pustakawan','$sejarah_indonesia','$sejarah_inggris','$sejarah_jepang','$sejarah_korea','$sejarah_belanda,'$sejarah_portugis','$sejarah_mongolia')");


   if($insert)
	{
		$reply = [
		"message" => "Berhasil insert ke DB",
	];
	} else{
		$reply = [
		"message" => "GAGAL insert ke DB",
	];
    }
}

sendFonnte($sender, $reply);

?>