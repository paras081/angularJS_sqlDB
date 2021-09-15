<?php
$connect = mysqli_connect("localhost","root","","angularshoppingcart_db");

$data = json_decode(file_get_contents("php://input"));

$p_id= $data->p_id;

$query = "DELETE FROM user_cart WHERE p_id = '$p_id'";

if(mysqli_query($connect,$query)){
	echo "item removed successfully";
}else{
	echo "Error"."<br/>".mysqli_error($connect);
}
?>
