import models.Facture;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by MACYLIA on 19/02/2017.
 */

public class ServletListeFacture extends HttpServlet {



    /* public ListFactures lister2 (){
    ServiceFacture sf = new ServiceFacture();
    ListFactures result = new ListFactures(sf.lister2());

          return result;
      }*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServiceFacture sf = new ServiceFacture();
        request.setAttribute("listeFacture",sf.lister2());
        this.getServletContext().getRequestDispatcher( "/emissions.jsp" ).forward( request, response );


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}


