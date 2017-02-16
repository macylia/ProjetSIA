import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by MACYLIA on 16/02/2017.
 */
@WebServlet(name = "ServletFacture")
public class ServletFacture extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String docType = request.getParameter("docType");
        String docTypeVersion = request.getParameter("docTypeVersion");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String value = request.getParameter("value");
        String contractNumber= request.getParameter("contractNumber");
        //String invoiceNumber = request.getParameter("invoiceNumber");
        //String statementType = request.getParameter("value");
        //String statementCategory = request.getParameter("value");
        //String statementReason = request.getParameter("value");

         Facture facture =  new Facture();

        facture.setDocType(docType);
        facture.setDocTypeVersion(docTypeVersion);
        facture.setStartDate(startDate);
        facture.setEndDate(endDate);
        facture.setValue(value);
        facture.setContractNumber(contractNumber);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
