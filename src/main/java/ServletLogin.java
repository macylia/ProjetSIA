import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by MACYLIA on 16/02/2017.
 */

public class ServletLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();



        String login ;
        String password;

        login = request.getParameter("login");
        password = request.getParameter("password");

        if (login.equals(password))  {
            request.setAttribute( "test", login );

            HttpSession session = request.getSession();
            session.setAttribute("username",login);
            this.getServletContext().getRequestDispatcher( "/acceuil.jsp" ).forward( request, response );

        }

        else

            response.sendRedirect("/index.jsp");




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
