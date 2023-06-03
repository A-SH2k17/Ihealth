

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author zizof
 */
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        String fullname= request.getParameter("fname");
        String username= request.getParameter("uname");
        String email= request.getParameter("email");
        String password= request.getParameter("psw");
        String confirmpass= request.getParameter("cnfpsw");
        
        try{
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webApp","healthApp","AdvProg");
            String sql = "insert into register(fullname,username,email,password,confirmpass) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,fullname);
            ps.setString(2,username);
            ps.setString(3,email);
            ps.setString(4,password);
            ps.setString(5,confirmpass);
            ps.executeUpdate();
            System.out.println("Done/n");
            RequestDispatcher rd = request.getRequestDispatcher("index.html");
            rd.forward(request,response);
        }catch(Exception e){
            System.out.println("Error:: "+e.getMessage());
        }
    }

    
}
