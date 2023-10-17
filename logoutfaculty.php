<?php
session_start();

$_SESSION["fidx"] = "";
unset($_SESSION['fidx']);

header('Location: index.php');
