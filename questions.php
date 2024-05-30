<?php
// include("core/db_connect.php");
include ("core/header.php");
// include("core/view.php");

?>
<main>
    <div>
        <div id="time"></div>
        <div id="category"></div>
    </div>

    SELECT * FROM `vragen` WHERE `vragen_category_id` = 2 AND `vragen_id` = [array];


    array = [621, 624, 626, 628, 629, 631, 632, 633, 634, 635, 636, 637, 638, 640, 641, 642, 643, 644, 645, 646];

    SELECT vragen_id FROM `vragen` ORDER BY vragen_id ASC;
    and then put this into an array ^

</main>
<?php
include ("core/footer.php");
?>