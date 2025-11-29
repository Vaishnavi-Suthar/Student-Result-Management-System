<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SRMS.Views.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SRMS - Home</title>

    <link href="../Libraries/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #f2f2f2;
        }

        #Mrow {
            background-image: url('../Images/pic-2.jpg');
            background-size: cover;
            background-position: center;
            height: 690px;
            position: relative;
            padding: 0;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.70) !important;
        }

        .welcome-box {
            background: rgba(255, 255, 255, 0.80);
            padding: 30px;
            border-radius: 10px;
            text-align: center;
        }

        .info-section h3 {
            color: #000;
        }

        .info-section p {
            color: #444;
        }
    </style>

</head>
<body>

    <!-- MAIN BACKGROUND SECTION -->
    <div class="container-fluid p-0">
        <div class="row m-0" id="Mrow">

            <!-- Navbar -->
            <div class="col-12 p-0">
                <nav class="navbar navbar-expand-lg navbar-dark">
                    <div class="container-fluid">
                        <a class="navbar-brand text-light" href="#">SRMS</a>

                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">

                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link text-light" href="Student/Login.aspx">Student</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-light" href="Admin/Login.aspx">Admin</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-light" href="#">Teacher</a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
            </div>

            <!-- CENTER TEXT BOX -->
            <div class="col-12 d-flex justify-content-center align-items-center" style="height: 500px;">
                <div class="welcome-box col-md-5">
                    <h1>Student Result Management System</h1>
                    <h3>Welcome User!</h3>
                    <h5>AAU</h5>
                </div>
            </div>

        </div>
    </div>

    <!-- INFO SECTION -->
    <div class="container my-5">
        <div class="row text-center info-section">

            <div class="col-md-4">
                <h3>Excellence</h3>
                <p>We provide high-level education driven by discipline and dedication.</p>
            </div>

            <div class="col-md-4">
                <h3>Innovation</h3>
                <p>Encouraging research, creativity, and modern learning techniques.</p>
            </div>

            <div class="col-md-4">
                <h3>Growth</h3>
                <p>Helping students achieve academic and personal development.</p>
            </div>

        </div>
    </div>

    <!-- FOOTER -->
    <div class="text-center text-secondary py-3">
        <h6>SRMS © 2024</h6>
    </div>

    <script src="../Libraries/js/bootstrap.bundle.min.js"></script>
</body>
</html>
