<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "shuttereroz";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Échec de la connexion à la base de données : " . $conn->connect_error);
}
if (isset($_GET['id'])) {
    $photoId = $_GET['id'];

    $sql = "SELECT photo_name, photo_price, photo_path, photo_description FROM photos WHERE id = $photoId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $photoName = $row["photo_name"];
        $photoDesc = $row["photo_description"];

        $photopath = $row["photo_path"];
        $photoPrice = $row["photo_price"];
        ?>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>
                <?php echo $photoName ?>
            </title>

            <link rel="stylesheet" href="./css/detail.css">
        </head>

        <body>
        <header>
        <div class="container">
            <input type="checkbox" name id="check">

            <div class="logo-container">
                <h3 class="logo">Shutter<span>Eroz</span></h3>
            </div>

            <div class="nav-btn">
                <div class="nav-links">
                    <ul>
                        <li class="nav-link" style="--i: .6s">
                            <a href="./index.php">Home</a>
                        </li>

                        <li class="nav-link" style="--i: 1.1s">
                            <a href="./index.php#photo-gallery">Photos</a>

                        </li>
                    </ul>
                </div>

                <div class="log-sign" style="--i: 1.8s">
                </div>
            </div>

            <div class="hamburger-menu-container">
                <div class="hamburger-menu">
                    <div></div>
                </div>
            </div>
        </div>
    </header>
            <?php




        echo '<div class="photo">';
            echo '<img src="' . $photopath . '" alt="' . $photoName . '">';
            echo '<div class="photo-details">';
            echo '<h3 class="photo-name">' . $photoName . '</h3>';
            echo '<h4 class="photo-desc">' . $photoDesc . '</h4>';

            echo '<p class="photo-price">' . $photoPrice . '€</p>';
            echo '<a href="tel:0788280176" class="btn transparent">Contacter</a>';

            echo '</div>';
            echo '</div>';

            echo '</div>';
    } else {
        echo "Aucune photo trouvée avec cet identifiant.";
    }
} else {
    echo "Identifiant de la photo non spécifié.";
}

$conn->close();
?>
</body>

</html>