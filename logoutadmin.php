<?php
session_start();
?>
<?php
$_SESSION["umail"] = ""; // Use '=' for assignment, not '=='
unset($_SESSION['umail']); // Unset the 'umail' session variable

header('Location: index.php');
?>
