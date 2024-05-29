<?php
session_start();


/**
 * Voor de Windows gebruikers;
 */

// $dbhost = "localhost";
// $dbuser = "root";
// $dbpass = "";
// $dbname = "theorie";

// $con = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

// if ($con -> connect_errno) {
//     echo "Failed to connect to MySQL: " . $con -> connect_error;
//     exit();
// }

// define("BASEURL","http://localhost/module2/theorie/");
define("BASEURL","http://localhost/theorie/");

function prettyDump ( $var ) {
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
}