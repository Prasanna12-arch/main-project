<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Registration Form</title>
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
        .form-group input[type="email"],
        .form-group input[type="file"] {
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
    <form action="registersurvlet.jsp" method="POST">
        <h2>Bank Registration Form</h2>
        <div class="form-group">
            <label for="fullname">Full_Name:</label>
            <input type="text" id="fullname" name="Full_Name" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="Email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone_Number:</label>
            <input type="text" id="phone" name="Phone_Number" required>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="Address" required>
        </div>
        <div class="form-group">
            <label for="account">Account_no:</label>
            <input type="text" id="Account_no" name="Account_no" required>
        </div>
        <div class="form-group">
            <label for="balance">Balance:</label>
            <input type="text" id="Balance" name="Balance" required>
        </div>
        <div class="form-group">
            <label for="idproof">ID_Proof:</label>
            <input type="file" id="idproof" name="ID_Proof" accept=".jpg,.jpeg,.png,.pdf" required>
        </div>
        <div class="form-group">
            <button type="submit">Register</button>
        </div>
    </form>
</body>
</html>
