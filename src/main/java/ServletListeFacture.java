
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by MACYLIA on 19/02/2017.
 */

public class ServletListeFacture extends HttpServlet {


/*
     public String lister2 (){
    ServiceFacture sf = new ServiceFacture();
         ObjectMapper mapper = new ObjectMapper();
         String json = null;
         try {
             json = mapper.writeValueAsString(sf.lister2());
         } catch (JsonProcessingException e) {
             e.printStackTrace();
         }
         System.out.println(json);
         return json;
      }*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
        ServiceFacture sf = new ServiceFacture();
        request.setAttribute("listeFacture",sf.lister2());
        this.getServletContext().getRequestDispatcher( "/factures.jsp" ).forward( request, response );
*/

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       System.out.println("je suis dans la servlet list facture");
        ServiceFacture sf = new ServiceFacture();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(sf.lister());


    }

}


