import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by MACYLIA on 03/01/2017.
 */
@WebServlet(name = "ServletLogin")
public class ServletLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login ;
        String password;



        login = request.getParameter("name");
        password = request.getParameter("password");


      /*  public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
            String message = "Transmission de variables : OK !";
            request.setAttribute( "test", message );
            this.getServletContext().getRequestDispatcher( "/WEB-INF/test.jsp" ).forward( request, response );
        }*/

        if (login.equals(password))  {
            request.setAttribute( "test", login );
            this.getServletContext().getRequestDispatcher( "acceuil.jsp" ).forward( request, response );

          //  RequestDispatcher rd = request.getRequestDispatcher("acceuil.jsp");
           // rd.forward(request,  response);
        }

        else

            response.sendRedirect("emissions.jsp");

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
