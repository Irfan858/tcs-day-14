<?php

require '../connect.php';

if ($_POST) {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $id = $_POST['id'];
    

    if (isset($_FILES['image']) && isset ($_FILES['image']['error'])!= 4) {
        $namaFile = $_FILES['image']['name'];
        $namaSementara = $_FILES['image']['tmp_name'];

        $dirUpload = '../thumbnail/';

        $uploading = move_uploaded_file($namaSementara, $dirUpload . $namaFile);

        if ($uploading == true) {
            // berhasil upload
            $image = $namaFile;
        } else {
            // gagal upload
            die('gagal upload gambar');
        }
    }


    $sql = "UPDATE blogs SET title = '$title', content = '$content' WHERE id = '$id' ";
    $hasil = $conn->query($sql);

    if ($hasil) {
        header('Location: ../admin/index.php');
    } else {
        echo "Gagal menambahkan: " . $conn->error;
    }
};
?>