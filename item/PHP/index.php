<?php
$link=mysqli_connect('127.0.0.1','root','root','zs2105');
$sql="SELECT *FROM `scenics` WHERE id<6";
$res=mysqli_query($link,$sql);
$arr=[];
while($row=mysqli_fetch_assoc($res)){
    array_push($arr,$row);
}
// var_dump($arr);
echo json_encode($arr);

?>