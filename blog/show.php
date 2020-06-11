<?php
    require '../connect.php';
    session_start();

    if (isset($_SESSION['status'])) {
        $status = $_SESSION['status'];
    } else {
        $status = false;
    }

    $id = ($_GET['id']);
    $sql = "SELECT * FROM blogs WHERE id = '$id'";
    $hasil = $conn->query($sql);
    $blog = $hasil->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Blog</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <div class="container">
            <a class="navbar-brand" href="#">Blog Gua</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/tcs_lesson/day-14/">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/tcs_lesson/day-14/blog">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/tcs_lesson/day-14/admin">Admin</a>
                    </li>
                </ul>
                <?php
                
                    if ($status == 'login') { ?>
                        <form class="form-inline my-2 my-lg-0">
                            <a href="/logout.php" class="btn btn-light ml-2 my-2 my-sm-0">Logout</a>
                        </form>

                        <?php
                    } else { ?>

                        <form class="form-inline my-2 my-lg-0">
                            <a href="/login.php" class="btn btn-light my-2 my-sm-0">Login</a>
                            <a href="/register.php" class="btn btn-light ml-2 my-2 my-sm-0">Register</a>
                        </form>

                    <?php
                    }
                ?>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                    <div class="card">
                        <div class="card-header font-weight-bold">
                        <?php echo $blog['title'] ?>
                        </div>
                        <div class="card-body">
                        <div class="card-img-top">
                        <?php
                        if ($blog['image'] == NULL || $blog['image'] == '') { ?>
                        <img src="https://via.placeholder.com/600x300.png?text=Image" class="card-img-top" alt="...">
                        <?php
                        } else { ?> 
                            <img src="/thumbnail/ <?php echo $blog['image'] ?>" class="card-img-top" alt="...">
                        <?php
                        }
                        ?>
                        </div>
                        <?php echo $blog['content'] ?>
                        </div>
                    </div>
            </div>
        </div>
    </div>

