<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>

<%
String Sender_Account_Number = request.getParameter("Sender_Account_Number");
String Receiver_Account_Number = request.getParameter("Receiver_Account_Number");
String AmountStr = request.getParameter("Amount");
String date = request.getParameter("Date");

// Check for null or empty parameters and handle appropriately
if (Sender_Account_Number == null || Receiver_Account_Number == null || AmountStr == null || date == null ||
Sender_Account_Number.trim().isEmpty() || Receiver_Account_Number.trim().isEmpty() || AmountStr.trim().isEmpty() || date.trim().isEmpty()) {
    out.println("Error: All parameters (Sender_Account_Number, Receiver_Account_Number, Amount, Date) are required.");
    return;
}

System.out.println(Sender_Account_Number);
System.out.println(Receiver_Account_Number);
System.out.println(AmountStr);
System.out.println(date);

Connection con = null;
PreparedStatement checkSenderBalance = null;
PreparedStatement updateSender = null;
PreparedStatement updateReceiver = null;
PreparedStatement insertTransaction = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking", "root", "root");

    if (con != null) {
        double amount = Double.parseDouble(AmountStr);

        // Check sender's balance
        checkSenderBalance = con.prepareStatement("SELECT Balance FROM register WHERE Account_no = ?");
        checkSenderBalance.setString(1, Sender_Account_Number);
        ResultSet senderResult = checkSenderBalance.executeQuery();

        if (senderResult.next()) {
            double senderBalance = senderResult.getDouble("Balance");

            if (senderBalance >= amount) {
                con.setAutoCommit(false); // Start transaction

                // Deduct amount from sender's account
                updateSender = con.prepareStatement("UPDATE register SET balance = balance - ? WHERE Account_no = ?");
                updateSender.setDouble(1, amount);
                updateSender.setString(2, Sender_Account_Number);
                int senderUpdateResult = updateSender.executeUpdate();

                
                // Add amount to receiver's account
                updateReceiver = con.prepareStatement("UPDATE register SET balance = balance + ? WHERE Account_no= ?");
                updateReceiver.setDouble(1, amount);
                updateReceiver.setString(2, Receiver_Account_Number);
                int receiverUpdateResult = updateReceiver.executeUpdate();

                if (senderUpdateResult > 0 && receiverUpdateResult > 0) {
                    // Insert transaction record
                    insertTransaction = con.prepareStatement("INSERT INTO host (Sender_Account_Number, Receiver_Account_Number, Amount, Date) VALUES (?, ?, ?, ?)");
                    insertTransaction.setString(1, Sender_Account_Number);
                    insertTransaction.setString(2, Receiver_Account_Number);
                    insertTransaction.setDouble(3, amount);
                    insertTransaction.setString(4, date);

                    int transactionResult = insertTransaction.executeUpdate();

                    if (transactionResult > 0) {
                    	
                        con.commit(); // Commit transaction
                        System.out.println("Payment successful");
                        response.sendRedirect("host.jsp");
                    } else {
                        con.rollback(); // Rollback transaction
                        System.out.println("Transaction recording failed");
                        response.sendRedirect("failure.jsp");
                    }
                } else {
                    con.rollback(); // Rollback transaction
                    System.out.println("Account update failed");
                    response.sendRedirect("failure.jsp");
                }
            } else {
                System.out.println("Insufficient balance");
                response.sendRedirect("insufficient_balance.jsp");
            }
        } else {
            System.out.println("Sender account not found");
            response.sendRedirect("account_not_found.jsp");
        }
    } else {
        System.out.println("Connection to the database failed");
        response.sendRedirect("connection_failed.jsp");
    }
} catch (Exception ex) {
    out.println("Error: " + ex.getMessage());
    ex.printStackTrace();
} finally {
    try {
        if (checkSenderBalance != null) checkSenderBalance.close();
        if (updateSender != null) updateSender.close();
        if (updateReceiver != null) updateReceiver.close();
        if (insertTransaction != null) insertTransaction.close();
        if (con != null) con.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>

