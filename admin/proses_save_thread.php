<?php
include "config.php";
//save untuk Buku
if($_GET['save']=="buku_member"){
	$buku_id		 = $_POST['buku_id'];
	$buku_judul 	 = $_POST['buku_judul'];

mysqli_query($link,"UPDATE thread SET buku_judul='$buku_judul' WHERE buku_id='$buku_id'");
header('location:threadbaru.php');
}else{

	$member_id		 = $_POST['member_id'];
	$member_subjek 	 = $_POST['member_subjek'];
	$member_pesan 	 = $_POST['member_pesan'];
	$member_datetime = $_POST['member_datetime'];

mysqli_query($link,"INSERT INTO thread(member_id, member_subjek, member_pesan, tanggal_upload) VALUES
		     ('$member_id','$member_subjek','$member_pesan','$member_datetime')");

header('location:threadbaru.php');
}
?>
