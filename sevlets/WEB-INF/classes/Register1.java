import java.io.*;
import java.sql.*;
import java.util.Date;
import javax.servlet.ServletException;
import java.text.SimpleDateFormat;
import javax.servlet.http.*;
import javax.swing.tree.ExpandVetoException;

public class Register1 extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String password1 = req.getParameter("password1");
        String email = req.getParameter("email");
        String phone = req.getParameter("mobile");
        String dob = req.getParameter("dob");
        String Address = req.getParameter("Address");
        // out.print("yes");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/week7", "root", "Bvssl22#");

            PreparedStatement ps = con.prepareStatement("insert into students values(?,?,?,?,?,?,?)");

            ps.setString(1, name);
            ps.setString(2, password);
            ps.setString(3, password1);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, dob);
            ps.setString(7, Address);

            int i = ps.executeUpdate();
            if (i >= 1) {
                // out.println("<script type=\"text/javascript\">");
                // out.println("alert('Registration successful.. please login');");
                // out.println("location='../login.html';");
                // out.println("</script>");
                out.println("registered");
            } else {
                out.println("could not register");
            }

        } catch (Exception e) {
            out.println("could not register" + e);
        }
        out.close();
    }
}