<?php
 $f_name = $_POST['f_name'];
$l_name=$_POST['l_name'];
$dob=$_POST['dob'];
$parent_name=$_POST['parent_name'];
$address=$_POST['address'];
$city=$_POST['city'];
$phone_no=$_POST['phone_no'];
$grade=$_POST['grade'];
$servername = "localhost";
$username = "root";
$password = "";
$database = "bpk";

// creating a connection
$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
    
        $sql = "INSERT INTO students (f_name, l_name, dob, parent_name, address, city, phone_no, grade) VALUES ('$f_name', '$l_name', '$dob', '$parent_name', '$address', '$city', '$phone_no', '$grade')";
if ($conn->query($sql) === TRUE) {
    echo "Student data stored successfully.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
       
$conn->close();
?> 
      

