<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IP Details</title>
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

        header {
            flex-shrink: 0;
        }

        main {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        footer {
            background-color: #333333;
            color: #ffffff;
            width: 100%;
            padding: 10px 0;
            text-align: center;
            margin-top: auto;
        }

        h2 {
            color: #ffffff;
            text-align: center;
            margin-top: 20px;
        }

        p {
            margin: 10px;
            text-align: center;
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
<main>
    <h2>IP Details</h2>
    <p><strong>IP Address:</strong> ${ipAddress}</p>
    <p><strong>Class:</strong> ${ipClass}</p>
    <p><strong>Subnet Mask:</strong> ${subnetMask}</p>
    <p><strong>Network ID:</strong> ${networkId}</p>
    <p><strong>Broadcast ID:</strong> ${broadcastId}</p>
</main>
<footer>
    <div style="background-color: #333333; color: #ffffff; padding: 10px 0; width: 100%;">
        CN Project | IP Details
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
