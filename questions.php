<?php
include("core/db_connect.php");
// include ("core/header.php");
// include("core/view.php");

?>
<main>
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
      ?>
      <div class='product'>
        <a href='productpage.php?id=<?= $producten_id . "&cat=" . $category_id ?>'>
        </a>
        <span class='product-text'>
          <a class='td-none' href='productpage.php?id=<?= $producten_id . "&cat=" . $category_id ?>'>
            <?= $producten_naam ?>
          </a>
        </span>
        <div class='cart-button' onclick='ManageStorage("<?= $producten_msName ?>")'>
          <img class='cart-img' alt='cart' width='40' height='40' src='./assets/img/cart.png' />
        </div>
        <!-- <button type="sumbit" class='cart-button'>
          <img class='cart-img' alt='cart' width='40' height='40' src='./assets/img/cart.png' />
        </> -->
        <span class='beschrijving'>
          <?= $producten_tekst ?>
        </span>
        <span class='prijs'>
          € <?= $producten_prijs ?>
        </span>
      </div>
      <?php
    }
  }
}
$sqli_prepare->close();
?>

    <!-- SELECT * FROM `vragen` WHERE `vragen_category_id` = 2 AND `vragen_id` = [array];


    array = [621, 624, 626, 628, 629, 631, 632, 633, 634, 635, 636, 637, 638, 640, 641, 642, 643, 644, 645, 646];

    SELECT vragen_id FROM `vragen` ORDER BY vragen_id ASC;
    and then put this into an array ^ -->

</main>
<?php
include ("core/footer.php");
?>