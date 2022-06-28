import java.io.*;
import java.sql.*;
import java.util.Date;
import javax.servlet.ServletException;
import java.text.SimpleDateFormat;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import javax.swing.tree.ExpandVetoException;

public class Login1 extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        // out.println("ello");
        String name = req.getParameter("name");
        String password = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/week7", "root", "Bvssl22#");

            PreparedStatement ps = con.prepareStatement("select * from students where name=? and password=?");
            // out.println("helloooooooooo");
            ps.setString(1, name);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // String n = req.getParameter("name");
                // out.println(rs.getString("Name"));
                // out.println("<html><body><h1>");
                out.println("Welcome " + name);
                // out.println("</html></body></h1>");

            } else {
                // out.println("<script type=\"text/javascript\">");
                // out.println("alert('Username or password incorrect');");
                // out.println("location='../login.html';");
                // out.println("</script>");
                out.println("incorrect username or password");

            }

        } catch (Exception e) {
            out.println(e + "unsuccessful");
        }
        out.close();
    }
}