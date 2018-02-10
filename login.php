<?php
include 'class/connect.php';
include 'class/model.php';
if (isset($_POST['login'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    $obj = new model();
    $obj->Login($username,$password);
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <title>Add New Company</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<form action="" method="POST">
    User Name : <input type="text" name="username" placeholder="Enter You User Name">
    Password  : <input type="password" name="password" placeholder="Enter Your Password">
    <input type="submit" value="Login" name="login">
</form>
</body>
</html>