<?php include_once "db.php";
// $acc=$_GET['acc'];

// echo $User->count(['acc'=>$acc]);
$chk=$User->count($_POST);
if($chk){
    echo $chk;
    $_SESSION['user']=$_POST['acc'];
}else{
    echo 0;
}




?>