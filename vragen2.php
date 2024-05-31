<?php
include ('core/header2.php');

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
            <main>
                <div class="blauwe-balk-h">aaa</div>
                <div class="content-container">
                    <div class="image"></div>
                    <div class="vraag-box">
                        <div class="vraag-balk2"><?= $question ?></div>
                        <div class="antwoord-box2"><?= $option_1 ?></div>
                        <div class="antwoord-box2"><?= $option_2 ?></div>
                        <?php if($type == 1){?>
                        <div class="antwoord-box2"><?= $option_3 ?></div>
                        <?php } ?>
                    </div>
                </div>
                <div class="blauwe-balk-f">
                        <a href="<?php if($vragen_id == 1){echo('index.php');} elseif($vragen_id >= 2 && $vragen_id <= 20){echo('vragen.php?id=' . $vragen_id - 1);}?>">
                            <button class="terug-knop2">< Terug</button>
                        </a>
                        <div class="spacer"></div>
                        <button class="verder-knop2" onclick="verderGaan()">Verder ></button>
                    </div>
                <?php
        }
    }
    $sqli_prepare->close();
}
?>
</main>
<script>
    // document.addEventListener("DOMContentLoaded", function() {
    //     var img = document.getElementById('vraag-afbeelding');
    //     img.onload = function() {
    //         var height = img.naturalHeight;
    //         if (height > 400) {  // Example height condition
    //             img.classList.add('move-up');
    //             console.log("added move-up class")
    //         }
    //     };
    // });

    // function selectAntwoord(element) {
    //     // Verwijder eerst 'selected' klasse van alle antwoordboxen
    //     var antwoordBoxen = document.querySelectorAll('.antwoord-box');
    //     antwoordBoxen.forEach(function(box) {
    //         box.classList.remove('selected');
    //     });
    //     // Voeg 'selected' klasse toe aan de geselecteerde antwoordbox
    //     element.classList.add('selected');
    // }

    // function verderGaan() {
    //     var geselecteerdeAntwoord = document.querySelector('.antwoord-box.selected');
    //     if (geselecteerdeAntwoord) {
    //         // Haal de huidige categorie en vragen_id op uit de URL
    //         var urlParams = new URLSearchParams(window.location.search);
    //         var cat = urlParams.get('cat');
    //         var id = urlParams.get('id');

    //         // Verhoog de vragen_id met 1
    //         var nieuweId = parseInt(id) + 1;

    //         // Bouw de nieuwe URL op met de nieuwe vragen_id
    //         var nieuweUrl = 'vragen.php?cat=' + cat + '&id=' + nieuweId;

    //         // Navigeer naar de nieuwe URL
    //         window.location.href = nieuweUrl;
    //     } else {
    //         alert("Kies eerst een antwoord voordat je verder gaat");
    //     }
    // }
</script>

<?php
include ('core/footer.php');
?>