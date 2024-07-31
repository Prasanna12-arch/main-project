<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>host to host</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input[type="text"],
        
        .form-group input[type="Date"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form action="hostsurvlet.jsp" method="POST">
        <h2>host to host </h2>
        <div class="form-group">
            <label for="Sender_Account_Number:">Sender_Account_Number:</label>
            <input type="text" id="Sender_Account_Number:" name="Sender_Account_Number" required>
        </div>
        <div class="form-group">
            <label for="Receiver_Account_Number">Receiver_Account_Number:</label>
            <input type="text" id="Receiver_Account_Number" name="Receiver_Account_Number" required>
        </div>
        <div class="form-group">
            <label for="Amount">Amount:</label>
            <input type="text" id="Amount" name="Amount" required>
        </div>
        <div class="form-group">
            <label for="Date">Date:</label>
            <input type="Date" id="Date" name="Date" required>
        </div>
        
        <div class="form-group">
            <button type="submit">Transfer</button>
        </div>
    </form>
</body>
</html>
