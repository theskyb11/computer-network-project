<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CN Project | SMTP</title>
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

        .form-label {
            color: #ffffff;
        }

        input[type="text"], input[type="file"] {
            background-color: #333333;
            border: 1px solid #ffffff;
            color: #ffffff;
        }

        input[type="text"]:focus, input[type="file"]:focus {
            background-color: #424242;
        }
    </style>
</head>

<body class="d-flex flex-column" style="min-height: 100vh;">
<header>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #333333;">
        <div class="container">
            <a class="navbar-brand" href="/">CN Project</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
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
<div class="flex-grow-1 d-flex align-items-center justify-content-center" style="background-color: #121212;">
    <form action="/smtp_form" method="post" enctype="multipart/form-data" class="m-5 w-50">
        <div class="mb-3">
            <label for="email" class="form-label">Enter Email</label>
            <input type="text" class="form-control" name="email" id="email">
        </div>

        <div class="mb-3">
            <label for="subject" class="form-label">Enter Email Subject</label>
            <input type="text" class="form-control" name="subject" id="subject">
        </div>

        <div class="mb-3">
            <label for="body" class="form-label">Enter Email Body</label>
            <input type="text" class="form-control" name="body" id="body">
        </div>

        <div class="mb-3">
            <label for="files" class="form-label">Attach Files</label>
            <input class="form-control" type="file" name="files" id="files" multiple>
        </div>

        <button type="submit" class="btn btn-primary">Send Mail</button>
    </form>
</div>
<footer class="text-center text-lg-start" style="background-color: #333333; color: #ffffff;">
    <div class="text-center p-3">
        SMTP | Send Mail
    </div>
</footer>

<!-- Bootstrap JS (optional, if you need Bootstrap JS features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
