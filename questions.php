<?php
include ('core/header2.php');
?>

<div class="blauwe-balkh"></div>

<div class="blauwe-balkf"></div>
<?php
$cat1 = $_GET['cat'];

$sqli_prepare = $con->prepare("SELECT vragen_id, vragen_category_id, type, image, question, feedback, option_1, option_2, option_3 FROM vragen WHERE vragen_category_id = $cat1;");
if ($sqli_prepare === false) {
  echo mysqli_error($con);
} else {
  if ($sqli_prepare->execute()) {
    $sqli_prepare->store_result();
    $sqli_prepare->bind_result($vragen_id, $vragen_category_id, $type, $image, $question, $feedback, $option_1, $option_2, $option_3);
    while ($sqli_prepare->fetch()) { // WHILE START

      $ids[] = $vragen_id;

      ?>

      <?php
    }
    // print_r($ids);
    ?>
  <div class="container">
    <div class="row zeker-text">
      Weet je zeker dat je veder wilt gaan
    </div>
    <a href="index.php"><button class="terug-knop">< Terug </button></a>
    <a href="vragen.php?id=<?php echo $ids[0] ?>"><button class="verder-knop">Verder ></button></a>
    
  </div>
    <?php
  }
}
$sqli_prepare->close();
?>

<?php
include ('core/footer.php');
?>