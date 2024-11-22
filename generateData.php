<?php
require_once 'vendor/autoload.php'; // Charger autoload de Composer

// Connexion à la base de données
$servername = "localhost";
$username = "root"; 
echo "Veuillez entrer le mot de passe pour l'utilisateur '$username': ";
$password = readline();
$dbname = "ecommerce"; 


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$faker = Faker\Factory::create();


$numberOfUsers = 10; 
for ($i = 0; $i < $numberOfUsers; $i++) {
    $firstName = $faker->firstName;
    $lastName = $faker->lastName;
    $email = $faker->unique()->email;
    $passwordHash = password_hash($faker->password, PASSWORD_BCRYPT); // Hachage du mot de passe
    $phoneNumber = $faker->unique()->phoneNumber;
    $phoneNumber = preg_replace('/\D/', '', $phoneNumber);
    $sql = "INSERT INTO users (first_name, last_name, email, password_hash, phone_number)
            VALUES ('$firstName', '$lastName', '$email', '$passwordHash', '$phoneNumber')";

    if ($conn->query($sql) === TRUE) {
        echo "Utilisateur $firstName $lastName ajouté avec succès\n";
    } else {
        echo "Erreur: " . $sql . "\n" . $conn->error;
    }
}

$numberOfCarts = 25;
for ($i = 0 ; $i < $numberOfCarts; $i++){
    $id_user = $faker->numberBetween(41,50);
    $sql = "INSERT INTO cart(id_user) VALUES ('$id_user')";
    if ($conn->query($sql) === TRUE) {
        echo "$numberOfCarts added succesfully into database\n";
    }else {
        echo "Erreur : " . $sql . "\n" . $conn->error;
    }
}

$numberOfCartProductsCommands = 50;
for($i = 0; $i < $numberOfCartProductsCommands; $i++){
    $cart_id = $faker->numberBetween(1,25);
    $quantity = $faker->numberBetween(1,15);
    $product_id = $faker->numberBetween(1,100);
    $sql =  "INSERT INTO cart_product_list (product_id, cart_id, quantity) VALUES ('$product_id','$cart_id','$quantity')";
    if ($conn->query($sql) === TRUE) {
        echo "products command list added";
    }else {
        echo "Erreur : " . $sql . "\n" . $conn->error;
    }
}

$numberOfProducts = 100;
for($i = 0; $i < $numberOfProducts; $i++){
    $productName = $faker->unique()->word;
    $price = $faker->randomFloat(2,3,250);
    $stock = $faker->numberBetween(10,1500);
    $sql = "INSERT INTO products (name, price, stock) VALUES('$productName', '$price','$stock')";
    if ($conn->query($sql) === TRUE){
        echo "products correctly added";
    }else{
        echo "Erreur : " . $sql . "\n" . $conn->error;
    }
}

$numberOfAdresses = 13;
for($i = 0; $i < $numberOfAdresses; $i++){
    $user_id = $faker->numberBetween(41,50);
    $adress_line = $faker->streetAddress;
    $city = $faker->city;
    $postal_code = $faker->postcode;
    $country = $faker->country;
    $sql ="INSERT INTO adresses (user_id, adress_line, city, postal_code, country) VALUES ('$user_id', '$adress_line','$city','$postal_code','$country')";
    if ($conn->query($sql) === TRUE){
        echo "adress succesfully added";
    }else {
        echo "Erreur : " . $sql . "\n" . $conn->error;
    }
}


$numberOfCommands = 12;
for ($i = 0; $i < $numberOfCommands; $i++){
    $cart_id = $faker->unique()->numberBetween(1,25);
    $created_at = $faker->dateTimeBetween('-3 years', 'now')->format('Y-m-d H:i:s'); // Convertir en chaîne
    $command_status = "Delivered";
    $id_adress = $faker->numberBetween(1,13);
    $sql = "INSERT INTO commands (cart_id, created_at, command_status, id_adress) VALUES ('$cart_id','$created_at','$command_status','$id_adress')";
    if ($conn->query($sql) === TRUE){
        echo "command added";
    }else {
        echo "Erreur : " . $sql . "\n" . $conn->error;
    }
}

//insertion of invoice here, user the num of commands because it's the same
for ($i = 0; $i < $numberOfCommands; $i++){
    $command_id = $i+1;
    $id_adress = $i+1;
    $sql = "INSERT INTO  invoice (command_id, id_adress) VALUES ('$command_id','$id_adress')";
    if ($conn->query($sql) === TRUE){
        echo "invoice added";
    }else {
        echo "Erreur : " . $sql . "\n" . $conn->error;
    }
}



// Fermeture de la connexion
$conn->close();
?>