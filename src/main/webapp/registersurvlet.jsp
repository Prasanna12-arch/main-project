<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%
String Full_Name = request.getParameter("Full_Name");
String Email = request.getParameter("Email");
String Phone_Number= request.getParameter("Phone_Number");
String Address= request.getParameter("Address");
String Account_no= request.getParameter("Account_no");
String Balance= request.getParameter("Balance");
String ID_Proof= request.getParameter("ID_Proof");
System.out.println(Full_Name);
System.out.println(Email);
System.out.println(Phone_Number);
System.out.println(Address);
System.out.println(Account_no);
System.out.println(Balance);
System.out.println(ID_Proof);

Connection con = null;
PreparedStatement st = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BANKING", "root", "root");

    // Check if the connection is successful before proceeding
    if (con != null) {
        st = con.prepareStatement("insert into register values(?,?,?,?,?,?,?)");
        st.setString(1,Full_Name);
        st.setString(2, Email);
        st.setString(3, Phone_Number);
        st.setString(4, Address);
        st.setString(5, Account_no);
        st.setString(6, Balance);
        st.setString(7, ID_Proof);

        int i = st.executeUpdate();

        if (i > 0) {
            System.out.println("Register successful");
            response.sendRedirect("host.jsp");
        } else {
            System.out.println("Register failed");
        }
    } else {
        System.out.println("Connection to the database failed");
    }
} catch (Exception ex) {
    out.println("Error: " + ex.getMessage());
} finally {
    // Close resources in a finally block to ensure they are always closed
    try {
        if (st != null) {
            st.close();
        }
        if (con != null) {
            con.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>