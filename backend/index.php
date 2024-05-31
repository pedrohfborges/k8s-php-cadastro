<?
header("Access-Control-Allow-Origin: *");
include 'conexao.php';

$id =  rand(1, 999);
$nome = $_POST["nome"];
$mensagem = $_POST["mensagem"];
$email = $_POST["email"];

$query = "INSERT INTO mensagens(id, nome, mensagem, email) VALUES ('$id', '$nome', '$mensagem', '$email')";


if ($link->query($query) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $link->error;
}
?>
