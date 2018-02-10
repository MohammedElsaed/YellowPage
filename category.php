<?php
include "class/connect.php";
include "class/model.php";
$model = new model();
if (isset($_POST['submit']))
{
    $catName = $_POST['name'];
    $model->AddCategory($catName);
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf8">
        <title>Add New Category</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
    <h1 class="text-canter">Add New Category</h1>
    <div class="container">
        <form action="category.php" method="POST">
            <div><!-- Category name -->
                <label for="name">Enter Category Name</label>
                <input type="text" name="name" id="name" placeholder="Enter Category Name" required>
            </div>
            <div class="btn"><!-- submit -->
                <input type="submit" value="Submit" name="submit" >
                <a href="form.php">Back</a>
            </div>
        </form>
    </div>
    </body>

</html>