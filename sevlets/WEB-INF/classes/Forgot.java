import java.io.*;
import java.sql.*;
import java.util.Date;
import javax.servlet.ServletException;
import java.text.SimpleDateFormat;
import javax.servlet.http.*;
import javax.swing.tree.ExpandVetoException;

public class Forgot extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String password1 = req.getParameter("password1");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/week7", "root", "Bvssl22#");

            PreparedStatement ps = con
                    .prepareStatement("update students set Password=?, Confpassword=? where Name=? ");
            ps.setString(1, password);
            ps.setString(2, password1);
            ps.setString(3, name);

            int i = ps.executeUpdate();
            out.println(i);
            if (i > 0) {
                // String n = request.getParameter("username");
                // out.println("<script type=\"text/javascript\">");
                // out.println("alert('Password changed successfully');");
                // out.println("location='../login.html';");
                // out.println("</script>");
                out.println("Password changed successfully");
            } else {
                out.println("Password cant be changes");
                // out.println("<script type=\"text/javascript\">");
                // out.println("alert('Username or password incorrect');");
                // out.println("location='../forgot_password.html';");
                // out.println("</script>");
            }

        } catch (Exception e) {
            out.println(e);
        }
    }
}
