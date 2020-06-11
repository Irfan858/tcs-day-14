<?php
require '../connect.php';

$id = $_GET['id'];
$sql = "DELETE FROM blogs WHERE id = '$id' ";
$hasil = $conn->query($sql);

if ($hasil) {
    header('location : /tcs_lesson/day-14/admin/index.php');
} else {
    echo "gagal emnghapus : ". $conn->error;
}
?>