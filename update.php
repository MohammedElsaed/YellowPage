<?php
include "class/connect.php";
include "class/model.php";

$id = $_GET['id'];
$model      = new model();
$result     = $model->SelectCity();
$stmt       = $model->SelectCategory();
$update     = $model->Update($id);


echo '<pre>';

print_r($update);

echo '</pre>';

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <title>Add New Company</title>
    <link rel="stylesheet" href="css/main.css">
    <script src="js/jquery-1.9.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#city').change(function () {
                var city_id = $(this).val();
                $.ajax({
                    url:"area.php",
                    method:"POST",
                    data:{city_id:city_id},
                    datatype:"text",
                    success:function (data) {
                        $('#area').html(data);
                    }
                });
            });
        });
    </script>
</head>
<body>
<h1 class="text-canter">Update Your Company Data</h1>
<div class="container">

    <form method="POST" action="check.php" enctype="multipart/form-data">

        <div><!-- company name -->
            <label for="name">Enter Company Name</label>
            <input type="text" name="name" id="name" value="<?php echo $update['company_name']; ?>" placeholder="Enter Company Name" required>
            <input type="hidden" name="id" value="<?php echo $update['0']['0']; ?>">
        </div>

        <div><!-- select Category -->
            <label for="category">Choose Category</label>
            <select name="category" id="category" required>
                <option selected>Choose Company Category</option>
                <?php foreach ($stmt as $item => $value) : ?>
                    <option value="<?php echo $value['category_id'] ?>"><?php echo $value['category_name'] ?></option>'
                <?php endforeach;?>
            </select>
        </div>

        <div><!-- company phone number -->
            <label for="phone">Enter Phone Number</label>
            <input type="text" name="phone" value="<?php echo $update['company_phone']; ?>" id="phone" placeholder="Enter Phone Number" required>
        </div>

        <div><!-- choose city -->
            <label for="city">Choose Your Company City</label>
            <select name="city" id="city" required>
                <option selected>Chooser Company City</option>
                <?php foreach ($result as $res => $data) : ?>
                    <option value="<?php echo $data['city_id']?>"><?php echo $data['city_name']?></option>
                <?php endforeach;?>
            </select>
        </div>

        <div><!-- choose area -->
            <label for="area">Choose Area</label>
            <select name="area" id="area" required>
                <option selected>Choose Area</option>
            </select>
        </div>
        <!-- upload company image -->
        <label for="image">Upload Company Image's</label>
        <input type="file" name="image" value="" id="image" multiple>
        <input type="hidden" name="path" value="<?php echo $update['0']['4']; ?>">

        <div><!-- submit -->
            <input type="submit" value="Submit" name="submit">
            <a href="main.php">Back</a>
        </div>

    </form>
</div>
</body>
</html>