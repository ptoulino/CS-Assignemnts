<?php


function our_display()
{
$username = $_SESSION["username"];
$password = $_SESSION["password"];
$EMPLOYEE_ID = $_SESSION["empl"];

$conn = hsu_conn_sess($username,$password);


$query= 'select *
	 from employee
	 where EMPLOYEE_ID = :EMPLOYEE_ID';

$stmt = oci_parse ($conn,$query);

oci_bind_by_name($stmt ,":EMPLOYEE_ID" ,$EMPLOYEE_ID);

oci_execute($stmt,OCI_DEFAULT);
oci_commit($conn);

?>

<h2 id="h2"> ⬇⬇⬇ The ID# of selected ⬇⬇⬇ </h2>
<ul>

   <?php
    while(oci_fetch($stmt))
    {
    $EMPLOYEE_ID= oci_result($stmt,"EMPLOYEE_ID");
    
     ?>

    <li> <?=$EMPLOYEE_ID ?> </li>
    <?php
    }
?>
</ul>


	<p onclick="alert('********************REDIRECTING TO LOGIN PAGE****************')"> 
	<a href="<?= htmlentities($_SERVER['PHP_SELF'],ENT_QUOTES)?>">
	CLICK TO HERE TO TRY AGAIN </a>
	</p>



<?php
	oci_free_statement($stmt);
	oci_close($conn);
}
?>

