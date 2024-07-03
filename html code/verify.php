<?php
// verify.php
require_once 'config.php';

// Verify user
if (isset($_POST['verify'])) {
  $verification_code = $_POST['verification_code'];

  $conn = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
  if ($conn->connect_error) {
    die("Connection failed: ". $conn->connect_error);
  }

  $query = "SELECT * FROM verifications WHERE verification_code =? AND expires_at > NOW()";
  $stmt = $conn->prepare($query);
  $stmt->bind_param("s", $verification_code);
  $stmt->execute();
  $result = $stmt->get_result();

  if ($result->num_rows > 0) {
    $user_id = $result->fetch_assoc()['user_id'];
    $query = "UPDATE users SET verified = TRUE WHERE id =?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $user_id);
    $stmt->execute();

    // Redirect to dashboard page
    header('Location: dashboard.php');
    exit;
  } else {
    echo "Invalid verification code or expired.";
    exit;
  }
}
?>