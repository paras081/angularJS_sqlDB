<?php
$connect = mysqli_connect("localhost","root","","angularshoppingcart_db");

$query = "SELECT * FROM user_cart ORDER BY p_id ASC";
$output = array();
$result = mysqli_query($connect,$query);


  while($row = mysqli_fetch_assoc($result)) {
   $output[] = $row;
  }

  // server-->browser
  echo json_encode($output);

?>
