<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reply Message</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: "Poppins", "Segoe UI", sans-serif;
            color: #333;
            padding: 30px;
        }

        .email-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 2px 12px rgba(0, 0, 0, 0.08);
            max-width: 600px;
            margin: 0 auto;
            padding: 30px;
        }

        .email-header {
            border-bottom: 1px solid #007bff;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }
    </style>
</head>

<body>
    <div class="email-card">
        <div class="email-header text-center">
            <h2 class="text-primary">Thank You, {{ $name }}</h2>
        </div>

        <p class="lead text-center mb-4">
            We appreciate you contacting us. Below is our reply to your message:
        </p>

        <div class="border p-3 rounded bg-white">
            <strong>Our reply:</strong>
            <p class="mb-0">{{ $reply }}</p>
        </div>
    </div>
</body>

</html>
