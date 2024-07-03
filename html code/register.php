<?php
// register.php
require_once 'config.php';

// Register user
if (isset($_POST['register'])) {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = password_hash($_POST['password'], PASSWORD_BCRYPT);

  $conn = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
  if ($conn->connect_error) {
    die("Connection failed: ". $conn->connect_error);
  }

  $query = "INSERT INTO users (name, email, password) VALUES (?,?,?)";
  $stmt = $conn->prepare($query);
  $stmt->bind_param("sss", $name, $email, $password);
  $stmt->execute();
  $user_id = $conn->insert_id;

  // Generate verification code
  $verification_code = generateVerificationCode();
  $expires_at = date('Y-m-d H:i:s', strtotime('+1 hour'));

  $query = "INSERT INTO verifications (user_id, verification_code, expires_at) VALUES (?,?,?)";
  $stmt = $conn->prepare($query);
  $stmt->bind_param("iss", $user_id, $verification_code, $expires_at);
  $stmt->execute();

  // Send verification email
  sendVerificationEmail($email, $verification_code);

  // Redirect to verification page
  header('Location: verify.php');
  exit;
}

function generateVerificationCode() {
  $code = rand(100000, 999999);
  return $code;
}

function sendVerificationEmail($email, $verification_code) {
  $subject = "Verify your email address";
  $message = "Please enter the following verification code: $verification_code";
  $headers = "From: your_email@example.com";

  mail($email, $subject, $message, $headers);
}
?>