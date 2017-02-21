import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import models.Facture;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by MACYLIA on 04/02/2017.
 */


public class CreationFingJson {

    static void ajoutFacture() throws IOException {

        TypeReference<List<Facture>> typeRef = new TypeReference<List<Facture>>() { };

        ObjectMapper mapper = new ObjectMapper();
        List<Facture> factures = mapper.readValue(new File("Facture.json"), typeRef);

        App app = new App();
        System.out.println("creer app");


        int nb =0;
        for (Facture facture : factures ){
            app.ajout(facture);
            nb++;
        }


        System.out.println("creation de"+nb+"facture de fichier json ");



        ServiceFacture sf = new ServiceFacture();

        System.out.println("affichage liste facture = "+sf.lister());



     /*   System.out.println("Facture "+factures);
        System.out.println("Facture "+factures.get(0).get_docType());
        System.out.println("Facture "+factures.get(1).get_docType());
        System.out.println("Facture "+factures.get(0).get_endDate());
        System.out.println("Facture "+factures.get(0).get_invoiceNumber());
        System.out.println("Facture "+factures.get(2).get_startDate());
        System.out.println("Facture "+factures.get(0).get_statementCategory());
        System.out.println("Facture "+factures.get(0).get_statementReason());
        System.out.println("Facture "+factures.get(3).get_statementType());
        System.out.println("Facture "+factures.get(0).get_value());*/

    }

    public static void main(String[] args) throws IOException {
        //Vos données, variables, différents traitements…
        CreationFingJson.ajoutFacture();
    }//Fin de la méthode main
}
