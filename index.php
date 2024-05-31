<?php
// include("core/connect_db.php");
include ("core/header.php");


?>
    <?php
if (isset($_SESSION['ingelogd']) && $_SESSION['ingelogd'] || isset($_SESSION['admin_ingelogd']) && $_SESSION['admin_ingelogd']) {
    
} else {
    // Redirect naar uitloggen.php
    header("Location: login/login.php");
    exit();
}
?>
<main>
    <div id="choose">Kies een categorie</div>
    <div class="content">
        <?php

        $sqli_prepare = $con->prepare("SELECT category_id, category_letter, chapter FROM category");
        if ($sqli_prepare === false) {
            echo mysqli_error($con);
        } else {
            if ($sqli_prepare->execute()) {
                $sqli_prepare->store_result();
                $sqli_prepare->bind_result($category_id, $category_letter, $chapter);
                while ($sqli_prepare->fetch()) { // WHILE START
                    ?>
                    <a class="category td-none" id="category-<?= $category_letter ?>" href="questions.php?cat=<?= $category_id ?>&id=1">
                        <div><?= $category_letter; ?></div>
                        <div class="cat-title"><?= $chapter; ?></div>
                    </a>
                    <?php
                }
            }
        }
        $sqli_prepare->close();
        ?>
    </div>
</main>
<?php
include ("core/footer.php");
?>