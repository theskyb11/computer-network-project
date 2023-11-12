<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HTTP Status</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        header,
        footer {
            background-color: #333333;
            color: #ffffff;
            width: 100%;
            padding: 10px 0;
            text-align: center;
        }

        .btn-group {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        a {
            margin: 10px 0;
        }
    </style>
</head>

<body>
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
<div class="container text-center">
    <div class="row">
        <div class="col">
            <div class="btn-group">
                <a href="httpstatus/success" class="btn btn-primary">HTTP Status - OK</a>
                <a href="httpstatus/server-error" class="btn btn-primary">HTTP Status - INTERNAL SERVER ERROR</a>
            </div>
        </div>
        <div class="col">
            <div class="btn-group">
                <a href="httpstatus/not-found" class="btn btn-primary">HTTP Status - NOT FOUND</a>
                <a href="httpstatus/bad-request" class="btn btn-primary">HTTP Status - BAD REQUEST</a>
            </div>
        </div>
        <div class="col">
            <div class="btn-group">
                <a href="httpstatus/unauthorized" class="btn btn-primary">HTTP Status - UNAUTHORIZED</a>
            </div>
        </div>
    </div>
</div>
<footer style="margin-top: auto;">
    <div style="background-color: #333333; color: #ffffff; padding: 10px 0; width: 100%;">
        CN Project | HTTP Status
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
