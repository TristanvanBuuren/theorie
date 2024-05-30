
<?php
  include('core/header2.php');
?>

<div class="blauwe-balkh"></div>

<div class="blauwe-balkl"></div>
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
    print_r($ids);
  }
}
$sqli_prepare->close();
?>
<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="vraag-balk">
                
                <p>Wat is de hoofdstad van Nederland?</p>
            </div>
            <div class="antwoord-box" onclick="selectAntwoord(this)">
                Amsterdam
            </div>
            <div class="antwoord-box" onclick="selectAntwoord(this)">
                Rotterdam
            </div>
            <div class="antwoord-box" onclick="selectAntwoord(this)">
                Deddn Haag
            </div>
            <button class="verder-knop" onclick="verderGaan()">Verder ></button>
        </div>
        </div>
    </div>
</div>
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
