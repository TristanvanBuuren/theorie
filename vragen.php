
<?php
  include('core/header2.php');
?>

<div class="blauwe-balkh"></div>
<div class="blauwe-balkl"></div>
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
                Den Haag
            </div>
            <button class="verder-knop" onclick="verderGaan()">Verder</button>
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
        window.location.href = "volgende.php";
    }
</script>

<?php
  include('core/footer.php');
?>
