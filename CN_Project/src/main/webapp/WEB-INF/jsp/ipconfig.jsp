<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CN Project | IP Details</title>
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
<pre>
    ${output}
</pre>
    <button class="btn btn-primary" onclick="window.print()">Print</button>
<footer class="text-center text-lg-start" style="background-color: #333333; color: #ffffff;">
    <div class="text-center p-3">
        CN Project | IP Details
    </div>
</footer>
</body>
</html>