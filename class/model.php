<?php

class model extends connect
{

    public function SelectCity()
    {
        $stmt = $this->connect->prepare("SELECT * FROM citys");
        $stmt->execute();
        $row = $stmt->fetchAll();
        return $row;
    }



    public function SelectCategory()
    {
        $stmt = $this->connect->prepare("SELECT * FROM categories");
        $stmt->execute();
        $row = $stmt->fetchAll();
        return $row;
    }

    public function data($compName ,$phone, $area , $path ,$category )
    {
        $stmt = $this->connect->
        prepare("INSERT INTO Companys (company_name,company_phone,area_id) VALUES
                    (:comname , :phone , :area)");
        $stmt->bindParam(1,$compName);
        $stmt->bindParam(2,$phone);
        $stmt->bindParam(3,$area);
        $stmt->execute(array(':comname' => $compName , ':phone' => $phone , ':area' => $area));
        $id = $this->connect->lastInsertId();
        $stmt2 = $this->connect->prepare("INSERT INTO photos ( Path , company_id ) VALUES ( :path , :id )");
        $stmt2->bindParam(4,$path);
        $stmt2->execute(array(':path' => $path , ':id' => $id));
        $stmt3 = $this->connect->prepare("INSERT INTO company_category( category_id , company_id ) VALUES ( :catid , :comid )");
        $stmt3->bindParam(5,$category);
        $stmt3->execute(array(':catid' => $category , ':comid' => $id));


    }

    public function AddCategory($catName)
    {
        $stmt = $this->connect->prepare("INSERT INTO categories( category_name ) VALUES (:cat)");
        $stmt->bindParam('1',$catName);
        $stmt->execute(array(':cat' => $catName));
    }

    public function AllData()
    {
        $stmt = $this->connect->prepare("SELECT  Companys.company_id , Companys.company_name , Companys.company_phone , Companys.area_id ,photos.Path FROM Companys LEFT OUTER JOIN photos on Companys.company_id=photos.company_id  ");
        $stmt->execute();
        $all = $stmt->fetchAll();
        return $all;
    }
    public function Login($username , $password)
    {
        if (!empty($username) && !empty($password))
        {
            $stmt = $this->connect->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
            $stmt->bindParam(1,$username);
            $stmt->bindParam(2,$password);
            $stmt->execute();
            $row = $stmt->fetch();
            $role   = $row['role'];
            $count = $stmt->rowCount();
            if ($count == 1 ){
                session_start();
                $_SESSION['role'] = $role;
                header('Location:main.php');
            }else{
                echo 'Incorrect User Name Or Password';
            }
        }else
        {
            echo 'Please Enter User Name And Password';
        }
    }

    public function Delete($del)
    {
        $stmt = $this->connect->prepare("DELETE FROM Companys WHERE Companys.company_id= $del");
        $stmt->bindParam(1,$del);
        $stmt->execute();
    }

    public function Update($id)
    {

        $stmt = $this->connect->prepare("SELECT  Companys.company_id , Companys.company_name , Companys.company_phone , Companys.area_id ,photos.Path FROM Companys LEFT OUTER JOIN photos on Companys.company_id=photos.company_id WHERE Companys.company_id= $id ");
        $stmt->bindParam(1,$id);
        $stmt->execute();
        $all = $stmt->fetchAll();
        return $all;
    }

}
