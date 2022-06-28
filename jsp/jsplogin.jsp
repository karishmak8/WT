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
    <%
    String name = request.getParameter("name");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/week7", "root", "Bvssl22#");

            PreparedStatement ps = con.prepareStatement("select * from jspstudents where name=? and password=?");
            // out.println("helloooooooooo");
            ps.setString(1, name);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // String n = req.getParameter("name");
                // out.println(rs.getString("Name"));
                %>
                <h1> <%= "Welcome " + name %>
                </h1>
    
                <%
            } else {
                %>
               <script type=<"text/javascript">
                alert('Username or password incorrect');
                location='../login.html';
                </script>
                <%
            }

        } catch (Exception e) {
            out.println(e + "unsuccessful");
        }
    %>
</body>
</html>