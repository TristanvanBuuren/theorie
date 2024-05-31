<?php
include($_SERVER['DOCUMENT_ROOT'] . '/Module2/theorie/core/db_connect.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= BASEURL;?>assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= BASEURL;?>assets/css/login.css">
    <link rel="stylesheet" href="../../assets/css/style.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <title>Theorie</title>
</head>
<body>
<nav>
        <ul>
            <li><a href="../index.php">Home</a></li>
            <?php if (isset($_SESSION['ingelogd']) && $_SESSION['ingelogd'] === true): ?>
                <li><a href="account.php">Account</a></li>
                <li><a href="uitloggen.php">Uitloggen</a></li>

                <?php elseif (isset($_SESSION['admin_ingelogd']) && $_SESSION['admin_ingelogd'] === true): ?>
                    <li><a href="../admin/admin_account.php">Admin Account</a></li>
                    <li><a href="../../login/uitloggen.php">Uitloggen</a></li>
                
            <?php else: ?>
               
                <li><a href="login.php">Inloggen</a></li>
            <?php endif; ?>
        </ul>
    </nav>
    
