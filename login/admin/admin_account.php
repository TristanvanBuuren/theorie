
<?php
    include('core/header.php');
?>

<head>
    <title>Admin Panel</title>
    <link rel="stylesheet" href="../../assets/css/style.css">
</head>
<body>
    <div class="header">
    <?php
if (isset($_SESSION['admin_ingelogd']) && $_SESSION['admin_ingelogd']) {
    
} else {
    // Redirect naar uitloggen.php
    header("Location: ../../login/uitloggen.php");
    exit();
}
?>
    </div>
    </body>
<div class="row">


<table class="table">
    <tr>
    <th>EDIT</th>
    <th>DELETE</th>
        <th>ID</th>
        <th>Blog_Bericht</th>
        <th>Blog_Maker</th>
        <th>Tijd Gemaakt</th>
        <th>Laatst Geëdit</th>
   
     
    </tr>
<?php
$counter = 1; // teller van de rij
$sql = "SELECT id, blog_bericht, blog_maker, tijd_gemaakt, laatst_edit FROM blogs ORDER BY laatst_edit DESC LIMIT 100";
$liqry = $con->prepare($sql);
if ($liqry === false) {
    echo mysqli_error($con);
} else {
    $liqry->bind_result($id, $bericht, $maker,$tijd_gemaakt,$laatst_edit);
    if ($liqry->execute()) {
        $liqry->store_result();
        while ($liqry->fetch()) {
            ?>
            <tr>
                <td><a href="edit_blog.php?id=<?php echo $id; ?>"><button class="button1">Edit</button></a></td>
                <td><a href="delete_blog.php?id=<?php echo $id; ?>"><button class="button2">Delete</button></a></td>
                <td><?php echo $id; ?></td>
                <td><?php echo $bericht; ?></td>
                <td><?php echo $maker; ?></td>
                <td><?php echo $tijd_gemaakt; ?></td>
                <td><?php echo $laatst_edit; ?></td>
     
            </tr>
            <?php
            $counter++; // Verhoog de teller voor de volgende rij
        }
    }
    $liqry->close();
}
?>
</table>
<div class="row">
    <div class="col-12">
        <a href="add_blog.php"><button class="button3">Toevoegen</button></a>
    </div>
</div>
<?php
    include('../core/footer.php');
?>