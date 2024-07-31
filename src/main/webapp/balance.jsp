<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Balance and Transactions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1, h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #555;
        }
        input[type="text"],
        input[type="number"],
        input[type="submit"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Balance</h1>
        <h2 id="balance">Loading...</h2>
        <form id="transactionForm" action="process_transaction.jsp" method="post">
            <label for="accountNumber">Account Number:</label>
            <input type="text" id="accountNumber" name="accountNumber" required>

            <label for="transactionType">Transaction Type:</label>
            <select id="transactionType" name="transactionType" required>
                <option value="credit">Credit</option>
                <option value="debit">Debit</option>
            </select><br><br>

            <label for="amount">Amount:</label>
            <input type="number" id="amount" name="amount" step="0.01" required>

            <input type="submit" value="Submit">
        </form>
    </div>

    <script>
        // JavaScript to fetch and display the balance
        document.addEventListener("DOMContentLoaded", function() {
            fetch("get_balance.jsp?accountNumber=12345")
                .then(response => response.text())
                .then(data => {
                    document.getElementById("balance").innerText = "Balance: $" + data;
                });
        });
    </script>
</body>
</html>
