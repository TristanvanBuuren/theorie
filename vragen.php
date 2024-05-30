<?php
include('core/header2.php');
?>

<div class="blauwe-balkh"></div>

<div class="blauwe-balkf"></div>
<?php
$cat1 = $_GET['cat'];
$vragen_id = isset($_GET['id']) ? $_GET['id'] : null;

if ($vragen_id === null) {
    // Haal alle vragen op voor de gegeven categorie
    $sqli_prepare = $con->prepare("SELECT vragen_id, vragen_category_id, type, image, question, feedback, option_1, option_2, option_3 FROM vragen WHERE vragen_category_id = $cat1;");
    if ($sqli_prepare === false) {
        echo mysqli_error($con);
    } else {
        if ($sqli_prepare->execute()) {
            $sqli_prepare->store_result();
            $sqli_prepare->bind_result($vragen_id, $vragen_category_id, $type, $image, $question, $feedback, $option_1, $option_2, $option_3);
            while ($sqli_prepare->fetch()) {
                $ids[] = $vragen_id;
                // Andere code...
            }
            print_r($ids);
        }
    }
    $sqli_prepare->close();
} else {
    // Haal de specifieke vraag op op basis van vragen_id
    $sqli_prepare = $con->prepare("SELECT vragen_id, vragen_category_id, type, image, question, feedback, option_1, option_2, option_3 FROM vragen WHERE vragen_id = ?;");
    $sqli_prepare->bind_param("i", $vragen_id);
    if ($sqli_prepare->execute()) {
        $sqli_prepare->store_result();
        $sqli_prepare->bind_result($vragen_id, $vragen_category_id, $type, $image, $question, $feedback, $option_1, $option_2, $option_3);
        if ($sqli_prepare->fetch()) {
            // Hier kun je de opgehaalde gegevens van de specifieke vraag verwerken
            ?>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="vraag-balk">
                            <p><?= $question ?></p>
                        </div>
                        <div class="antwoord-box" onclick="selectAntwoord(this)">
                            <?= $option_1 ?>
                        </div>
                        <div class="antwoord-box" onclick="selectAntwoord(this)">
                            <?= $option_2 ?>
                        </div>
                        <?php if ($type == 1): ?>
                            <div class="antwoord-box" onclick="selectAntwoord(this)">
                                <?= $option_3 ?>
                            </div>
                        <?php endif; ?>
                        <button class="verder-knop" onclick="verderGaan()">Verder ></button>
                    </div>
                </div>
            </div>
            <?php
        }
    }
    $sqli_prepare->close();
}
?>
<script>
    function selectAntwoord(element) {
        // Verwijder eerst 'selected' klasse van alle antwoordboxen
        var antwoordBoxen = document.querySelectorAll('.antwoord-box');
        antwoordBoxen.forEach(function(box) {
            box.classList.remove('selected');
        });
        // Voeg 'selected' klasse toe aan de geselecteerde antwoordbox
        element.classList.add('selected');
    }

    function verderGaan() {
        var geselecteerdeAntwoord = document.querySelector('.antwoord-box.selected').innerText;
        alert("Geselecteerd antwoord: " + geselecteerdeAntwoord);
        window.location.href = "vragen.php";
    }
</script>

<?php
include('core/footer.php');
?>
