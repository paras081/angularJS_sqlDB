<?php
$connect = mysqli_connect("localhost","root","","angularshoppingcart_db");

// browser -->server
$data = json_decode(file_get_contents("php://input"));

$p_name = $data->p_name;
$p_image = $data->p_image;
$p_prize = $data->p_prize;

$query = "INSERT INTO user_cart (p_name,p_image,p_prize) 
		              VALUES ('$p_name','$p_image','$p_prize')";


if(mysqli_query($connect,$query)){
	echo "item added successfully";
}else{
	echo "Error"."<br/>".mysqli_error($connect);
}


// $output = array();
// $result = mysqli_query($connect,$query);


//   while($row = mysqli_fetch_assoc($result)) {
//    $output[] = $row;
//   }

//   // server-->browser
//   echo json_encode($output);

?>
