<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%@ page import= "java.sql.*" %>

    <% String name = request.getParameter("name");
    String password = request.getParameter("password");
    String password1 = request.getParameter("password1");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/week7", "root", "Bvssl22#");

        PreparedStatement ps = con
                .prepareStatement("update jspstudents set Password=?, Confpassword=? where Name=? ");
        ps.setString(1, password);
        ps.setString(2, password1);
        ps.setString(3, name);

        int i = ps.executeUpdate();
        out.println(i);
        if (i > 0) {
            // String n = request.getParameter("username");

            %>

           <script >
            alert('Password changed successfully');
            location='../login.html';
            </script>

            <%
        } else {
            %>
            <script>
            alert('Username or password incorrect');
            location='../forgot_password.html';
            </script>
            <%
        }

    } catch (Exception e) {
        out.println(e);
    }
    %>
</body>
</html>