<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IP Address Details Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header, footer {
            background-color: #800080;
            color: #ffffff;
            width: 100%;
            padding: 10px 0;
            text-align: center;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
        }

        .navbar-brand {
            color: #ffffff !important;
            font-weight: bold;
        }

        form {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input {
            width: 300px;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: none;
        }

        button {
            width: 100px;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: none;
            background-color: #800080;
            color: #ffffff;
            cursor: pointer;
        }
    </style>
</head>

<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #800080;">
        <div class="container">
            <a class="navbar-brand" href="/" style="color: #ffffff; font-weight: bold;">CN Project</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="ipconfig" style="color: #ffffff;">Get your device Connection Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="smtp" style="color: #ffffff;">SMTP Implementation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="httpstatuses" style="color: #ffffff;">HTTP Protocol</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="usermenu" style="color: #ffffff;">HTTP Requests</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ipinfo" style="color: #ffffff;">IP Info Calculator</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
    <form action="/ipDetails" method="post">
        <label for="ipAddress">Enter an IPv4 address:</label>
        <input type="text" id="ipAddress" name="ipAddress" placeholder="E.g., 192.168.0.1">
        <button type="submit">Submit</button>
    </form>
</div>
<footer>
    <div style="text-align: center; background-color: #800080; color: #ffffff; padding: 10px 0; width: 100%;">
        CN Project | IP Details
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
