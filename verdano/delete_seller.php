<!DOCTYPE>
<html>

<?php
ini_set('error_reporting', 'E_COMPILE_ERROR|E_RECOVERABLE_ERROR|E_ERROR|E_CORE_ERROR');


include 'connection.php';
$conn = OpenCon();

if (mysqli_connect_errno())	
{
	echo "Unable to connect to server " . mysqli_connect_error();
}
$username=$_POST['usr_id'];
$check_query='SELECT * FROM sellers WHERE usr_id = '.$username;
$delete_query='DELETE FROM sellers WHERE usr_id = '.$username;


$result = mysqli_query($conn, $check_query);
$number_of_rows = $result->num_rows;
if($number_of_rows == 1)
{
		$delete = mysqli_query($conn, $delete_query);
		if($delete == 1)
		{
            echo '<script>alert("Seller Account has been removed"); </script>';
			$_SESSION['refresh']=true;
			echo '<script> window.location.href = "admin.php";</script>';
			exit;
		}
		else
		{
			echo '<script>alert("Error removing Seller account."); window.location.href = "admin.php#";</script>';
			exit;
		}
		
}
else if($number_of_rows == 0)
{
		$row=$result->fetch_assoc();
		echo '<script>alert("No customer found with this ID."); window.history.back();</script>';
		exit;
}


?>

</html>