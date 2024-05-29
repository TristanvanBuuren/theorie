<?php
// include("core/connect_db.php");
include ("core/header.php");


?>
<main>
    <div class="flex" id="header">
        <h1 class="flex" id="title">CBR oefenexamen</h1>
        <img class="flex" id="logo" src="https://notion-emojis.s3-us-west-2.amazonaws.com/prod/svg-twitter/1f698.svg"
            alt="LOGO" />
    </div>
    <div id="choose">Kies een categorie</div>
    <div class="content">
        <?php
        include ("core/view.php");
        foreach ($array["category"] as $category) {
            ?>
            <div class="category" id="category-<?= $category["category"];?>">
                <div><?= $category["category"];?></div>
                <div class="cat-title"><?= $category["chapter"];?></div>
            </div>
            <?php
        }
        ?>
        <!-- <div class="category" id="category-b">
            <div id="cat-b">B</div>
            <div class="cat-title">Rijbevoegdheid en rijbewijzen</div>
        </div>

        <div class="category" id="cat-t">T</div> -->
    </div>

</main>
<?php
include ("core/footer.php");
?>