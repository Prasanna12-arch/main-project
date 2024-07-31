<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>transactions</title>
<style type="text/css">
    body {
        background-color: #e6f0ff;
        font-family: Arial, sans-serif;
    }

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #ffffff;
    }

    th, td {
        border: 1px solid #000;
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    button {
        background-color: #ff6666;
        color: white;
        border: none;
        padding: 8px 16px;
        cursor: pointer;
        border-radius: 4px;
    }

    button:hover {
        background-color: #ff4d4d;
    }
</style>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"></script>
</head>

<body>
    <h2 style="text-align: center;">Transaction List</h2>
    
    <table id="transactionTable">
        <thead>
            <tr>
                <th>From_Account</th>
                <th>To_Account</th>
                <th>Amount</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking", "root", "root");
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery("select * from host");
            while(rs.next()) {
        %>
            <tr>
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td><%=rs.getString(4) %></td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <script>
        $(document).ready(function() {
            $('#transactionTable').DataTable({
                "searching": true, // Enables the search box
                "paging": true,    // Enables pagination
                "ordering": true,  // Enables column sorting
                "info": true       // Shows information about the table
            });
        });
    </script>
</body>
</html>
