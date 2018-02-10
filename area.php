<?php
include 'class/connect.php';

    $obj = new connect();
    $con = $obj->db();
    $city_id = $_POST['city_id'];
    if (!empty($city_id))
    {
        $stmt = $con->prepare("SELECT * FROM area WHERE city_id = $city_id");
        $stmt->execute();
        $row = $stmt->fetchAll();
        foreach ($row as $val => $value)
        {
            echo '<option value="'.$value['area_id'].'">'.$value['area_name'].'</option>';
        }

    }




