<?php
include 'class/connect.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $id = $_POST['id'];
    $companyName = $_POST['name'];
    $companyCategory = $_POST['category'];
    $companyPhone = $_POST['phone'];
    $companyCity = $_POST['city'];
    $companyArea = $_POST['area'];
    $path = $_POST['path'];




$obj = new connect();
    $con = $obj->db();

    $stmt = $con->prepare("UPDATE Companys , photos SET Companys.company_name = ? ,Companys.company_phone = ? ,Companys.area_id = ? ,photos.Path = ? WHERE Companys.company_id=$id AND Companys.company_id=photos.company_id");
    $stmt->execute(array($companyName, $companyPhone, $companyArea, $path));
    if($stmt->rowCount() > 0){
        header('Location:main.php');
    }else{
        echo 'Error';
    }



}