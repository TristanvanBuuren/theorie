<?php
include('../core/header.php');

// Controleer of de databaseverbinding is ingesteld
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

// Variabelen voor de ingevoerde waarden
$id = '';
$product_naam = '';
$product_prijs = '';
$product_bio = '';
$product_kleinbio = '';
$foto1 = '';
$foto2 = '';
$foto3 = '';

// Query om bestaande gegevens op te halen als de ID is opgegeven
if (isset($_GET['id'])) {
    $current_id = $_GET['id'];

    $sql = "SELECT id, product_naam, product_prijs, product_bio, product_kleinbio, foto_1, foto_2, foto_3 FROM producten WHERE id = ?";
    $stmt = $con->prepare($sql);

    if ($stmt === false) {
        die("Error preparing statement: " . $con->error);
    }

    $stmt->bind_param('i', $current_id);
    $stmt->execute();
    $stmt->bind_result($id, $product_naam, $product_prijs, $product_bio, $product_kleinbio, $foto1, $foto2, $foto3);
    $stmt->fetch();
    $stmt->close();
}

// Als het formulier is ingediend, gebruik dan de ingevoerde waarden
if (isset($_POST['submit'])) {
    $id = filter_var($_POST['id'], FILTER_VALIDATE_INT);
    $product_naam = htmlspecialchars($_POST['product_naam']);
    $product_prijs = filter_var($_POST['product_prijs'], FILTER_SANITIZE_STRING);
    $product_bio = htmlspecialchars($_POST['product_bio']);
    $product_kleinbio = htmlspecialchars($_POST['product_kleinbio']);
    $foto1 = htmlspecialchars($_POST['foto1']);
    $foto2 = htmlspecialchars($_POST['foto2']);
    $foto3 = htmlspecialchars($_POST['foto3']);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/css/style.css">
    <title>EditProduct</title>
</head>
<body>
    <form method="post">
        <div class="mb-3">
            <label for="numberInput" class="form-label">ID</label>
            <input type="number" name="id" class="form-control" id="numberInput" placeholder="ID" value="<?php echo $id; ?>" required>
        </div>
        <div class="mb-3">
            <label for="textInput" class="form-label">Product_Naam</label>
            <input type="text" name="product_naam" class="form-control" id="product_naam" placeholder="Naam" value="<?php echo $product_naam; ?>" required>
        </div>
        <div class="mb-3">
            <label for="textInput" class="form-label">Product_Prijs</label>
            <input type="text" pattern="[0-9]{1,3}\.[0-9]{2}" name="product_prijs" class="form-control" id="product_prijs" placeholder="Prijs" value="<?php echo $product_prijs; ?>" required>
            <div class="error-message">min 1 en max 2 getal voor de prijs en moet 2 cijfers achter de punt</div>
        </div>
        <div class="mb-3">
            <label for="textInput" class="form-label">Product_bio</label>
            <input type="text" name="product_bio" class="form-control" id="product_bio" placeholder="Bio" value="<?php echo $product_bio; ?>" required>
        </div>
        <div class="mb-3">
            <label for="textInput" class="form-label">Product_Kleinbio</label>
            <input type="text" name="product_kleinbio" class="form-control" id="product_kleinbio" placeholder="kleinbio" value="<?php echo $product_kleinbio; ?>" required>
        </div>
        <div class="mb-3">
            <label for="textInput" class="form-label">foto_1</label>
            <input type="text" name="foto1" class="form-control" id="foto1" placeholder="foto 1" value="<?php echo $foto1; ?>" required>
        </div>
        <div class="mb-3">
            <label for="textInput" class="form-label">foto_2</label>
            <input type="text" name="foto2" class="form-control" id="foto2" placeholder="foto 2" value="<?php echo $foto2; ?>" required>
        </div>
        <div class="mb-3">
            <label for="textInput" class="form-label">foto_3</label>
            <input type="text" name="foto3" class="form-control" id="foto3" placeholder="foto 3" value="<?php echo $foto3; ?>" required>
        </div>
        
        <button type="submit" name="submit" class="button4">Change</button>
    </form>
</body>
</html>
<?php
if (isset($_POST['submit'])) {
    $new_id = filter_var($_POST['id'], FILTER_VALIDATE_INT);

    // Controleer of de nieuwe ID al in gebruik is door een ander product
    $check_sql = "SELECT COUNT(*) FROM producten WHERE id = ? AND id != ?";
    $check_stmt = $con->prepare($check_sql);
    $check_stmt->bind_param('ii', $new_id, $current_id);
    $check_stmt->execute();
    $check_stmt->bind_result($count);
    $check_stmt->fetch();
    $check_stmt->close();

    if ($count > 0) {
        echo "Deze ID is al in gebruik. Kies een andere ID.";
    } else if ($new_id === false || $new_id <= 0 || $new_id >= 100) {
        echo "Ongeldige ID. Voer een positief heel getal onder de 100 in.";
    } else if (!preg_match("/^[a-zA-Z0-9 ]*$/", $product_naam)) {
        echo "Ongeldige naam. Gebruik alleen letters en cijfers.";
    } else if (!preg_match("/^[a-zA-Z0-9 .,'']*$/", $product_bio)) {
        echo "Ongeldige Bio. Gebruik alleen letters, cijfers, spaties, en de symbolen . , ";
    } else if (!preg_match("/^[a-zA-Z0-9 .,'']*$/", $product_kleinbio)) {
        echo "Ongeldige Kleinbio. Gebruik alleen letters, cijfers, spaties, en de symbolen . , ";
    } else if (!preg_match("/^[a-zA-Z0-9 ]*\.png$/", $foto1)) {
        echo "Ongeldige foto1. Gebruik alleen letters en cijfers en voeg '.png' toe aan het einde van de naam.";
    } else if (!preg_match("/^[a-zA-Z0-9 ]*\.png$/", $foto2)) {
        echo "Ongeldige foto2. Gebruik alleen letters en cijfers en voeg '.png' toe aan het einde van de naam.";
    } else if (!preg_match("/^[a-zA-Z0-9 ]*\.png$/", $foto3)) {
        echo "Ongeldige foto3. Gebruik alleen letters en cijfers en voeg '.png' toe aan het einde van de naam.";
    } else {
        $sql = "UPDATE producten SET id = ?, product_naam = ?, product_prijs = ?, product_bio = ?, product_kleinbio = ?, foto_1 = ?, foto_2 = ?, foto_3 = ? WHERE id = ?";
        $updateqry = $con->prepare($sql);

        if ($updateqry === false) {
            die("Error preparing statement: " . $con->error);
        }

        $updateqry->bind_param('isssssssi', $new_id, $product_naam, $product_prijs, $product_bio, $product_kleinbio, $foto1, $foto2, $foto3, $current_id);

        if ($updateqry->execute()) {
            
            $redirectUrl = BASEURL . "admin/producten/";
            header("Location: " . $redirectUrl);
            exit();
        } else {
            echo "Error bij bijwerken product: " . $updateqry->error;
        }

        $updateqry->close();
    }
}
?>

<?php
include('../core/footer.php');
?>
