<?php 
include('../../config/config.php');

$thongtinlienhe= $_POST['thongtinlienhe'];
$id= $_GET['id'];

if(isset($_POST['submitlienhe'])){
//sua
    $sql_update = "UPDATE  tbl_lienhe SET thongtinlienhe='".$thongtinlienhe."' WHERE id_lienhe='$id' ";
    mysqli_query($mysqli,$sql_update);
    header('location:../../index.php?action=quanlyweb&query=capnhat');
}
?>