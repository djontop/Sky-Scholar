<?php
session_start();
?>
<?php
$_SESSION["sidx"] = "";
unset($_SESSION['sidx']);
header('Location: index.php');
