<?php
    session_start();
if ($_SESSION['role'] == 1){ ?>

    <!DOCTYPE html>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
        .logout{
            float: right;
            margin: 10px;
        }
        img{
            width: auto;
            height: 150px;
        }
    </style>
</head>
<body>
<div class="container">
    <a class="logout btn btn-primary" href="logout.php">LOGOUT</a>
    <a class="logout btn btn-primary" href="form.php">Add New Company</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Company Name</th>
            <th>Company Phone</th>
            <th>Company Area</th>
            <th>Company Photo</th>
            <th>Action</th>
        </tr>
        <?php
        include 'class/connect.php';
        include 'class/model.php';
        $con = new model();
        $data = $con->AllData();
        $id = $_GET['id'];
        $con->Delete($id);
        ?>
        <?php foreach($data as $index => $row) : ?>
            <tr>
                <td><?php echo $row['company_id']; ?></td>
                <td><?php echo $row['company_name']; ?></td>
                <td><?php echo $row['company_phone']; ?></td>
                <td><?php echo $row['area_id']; ?></td>
                <td><img src="photos/<?php echo $row['Path']; ?>"></td>
                <td>
                    <a class="btn btn-danger" href="main.php?id=<?php echo $row['company_id']; ?>">Delete</a>
                    <a class="btn btn-primary" href="update.php?id=<?php echo $row['company_id']; ?>">Update</a>
                </td>
            </tr>
        <?php endforeach;?>
    </table>
</div>
</html>

   <?php }elseif ($_SESSION['role']== 0){ ?>
   <?php session_start(); ?>

<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
        .logout{
            float: right;
            margin: 10px;
        }
        img{
            width: 250px;
            height: 150px;
        }
    </style>
</head>
<body>
<div class="container">
    <a class="logout btn btn-primary" href="logout.php">LOGOUT</a>
    <a class="logout btn btn-primary" href="registration.php">Add New User</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Company Name</th>
            <th>Company Phone</th>
            <th>Company Area</th>
            <th>Company Photo</th>
        </tr>
        <?php
        include 'class/connect.php';
        include 'class/model.php';
        $con = new model();
        $data = $con->AllData();
        ?>
        <?php foreach($data as $index => $row) : ?>
            <tr>
                <td><?php echo $row['company_id']; ?></td>
                <td><?php echo $row['company_name']; ?></td>
                <td><?php echo $row['company_phone']; ?></td>
                <td><?php echo $row['area_id']; ?></td>
                <td><img src="photos/<?php echo $row['Path']; ?>"></td>
            </tr>
        <?php endforeach;?>
    </table>
</div>

</html>
<?php }
