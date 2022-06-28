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
    <%@ page import= "java.util.Date" %>

    <% String name = request.getParameter("name");
    String password = request.getParameter("password");
    String password1 = request.getParameter("password1");
    String email = request.getParameter("email");
    String phone = request.getParameter("mobile");
    String dob = request.getParameter("dob");
    String Address = request.getParameter("Address");
    // out.print("yes");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/week7", "root", "Bvssl22#");

        PreparedStatement ps = con.prepareStatement("insert into jspstudents values(?,?,?,?,?,?,?)");

        ps.setString(1, name);
        ps.setString(2, password);
        ps.setString(3, password1);
        ps.setString(4, email);
        ps.setString(5, phone);
        ps.setString(6, dob);
        ps.setString(7, Address);

        int i = ps.executeUpdate();
        if (i >= 1) {
            %>
            Registration successful... please login
            <script type=<"text/javascript">
            alert('Registration successful.. please login');
            location='./login.jsp';
            </script>
            <%
        } else {
            out.println("could not register");
        }

    } catch (Exception e) {
        out.println("could not register" + e);
    }
    out.close();%>
</body>
</html>