<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CN Project | Homepage</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }

        .btn {
            color: #ffffff;
        }

        header, footer {
            background-color: #333333;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
        }

        .navbar-brand {
            color: #ffffff !important;
            font-weight: bold;
        }

        .container {
            background-color: #1e1e1e;
            border-radius: 10px;
            padding: 20px;
        }

        h1 {
            color: #ffffff;
        }
    </style>
</head>

<body class="d-flex flex-column min-vh-100">
<header>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #333333;">
        <div class="container">
            <a class="navbar-brand" href="#">CN Project</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="ipconfig">Get your device Connection Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="smtp">SMTP Implementation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="httpstatuses">HTTP Protocol</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="usermenu">HTTP Requests</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ipinfo">IP Info Calculator</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<main class="flex-fill">
    <div class="container mt-5">
        <h1 class="mb-4">Protocol Implementation</h1>
        <a href="ipconfig" class="btn btn-primary me-2 mb-2" style="text-decoration: none">Get your device Connection Details</a><br>
        <a href="smtp" class="btn btn-secondary me-2 mb-2" style="text-decoration: none">SMTP Implementation</a><br>
        <a href="httpstatuses" class="btn btn-success me-2 mb-2" style="text-decoration: none">HTTP Protocol</a><br>
        <a href="usermenu" class="btn btn-danger me-2 mb-2" style="text-decoration: none">HTTP Requests</a><br>
        <a href="ipinfo" class="btn btn-warning me-2 mb-2" style="text-decoration: none">IP Info Calculator</a><br>
    </div>
</main>

<footer class="text-center text-lg-start" style="background-color: #333333; color: #ffffff;">
    <div class="text-center p-3">
        CN Project | Homepage
    </div>
</footer>

<!-- Bootstrap JS (optional, if you need Bootstrap JS features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
