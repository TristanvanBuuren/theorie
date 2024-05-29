<?php
// include("core/connect_db.php");
include ("core/header.php");


?>
<main>
    <div id="choose">Kies een categorie</div>
    <div class="content">
        <?php
        include ("core/view.php");
        foreach ($array["category"] as $category) {
            ?>
            <a class="category td-none" id="category-<?= $category["category"];?>" href="questions.php?cat=<?= $category["category"] ?>">
                <div><?= $category["category"];?></div>
                <div class="cat-title"><?= $category["chapter"];?></div>
            </a>
            <?php
        }
        ?>
    </div>

</main>
<?php
include ("core/footer.php");
?>