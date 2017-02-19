import models.Facture;
import org.hibernate.ejb.HibernatePersistence;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.spi.PersistenceProvider;
import java.util.HashMap;

/**
 * Created by MACYLIA on 17/02/2017.
 */
public class App2 {


    public static void main(String[] args) {
        // Démarre JPA et ouvre une session
        PersistenceProvider persistenceProvider = new HibernatePersistence();
        EntityManagerFactory emf = persistenceProvider.createEntityManagerFactory("NewPersistenceUnit",new HashMap());

        EntityManager em = emf.createEntityManager();
        System.out.println("Entity manager prêt");

        // Commence une transaction
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        System.out.println("Début de la transaction");

        Facture facture =  new Facture();

        facture.setDocType("docType");
        facture.setDocTypeVersion("docTypeVersion");
        facture.setStartDate("2017-02-01");
        facture.setEndDate("2017-02-01");
        facture.setValue("1");
        facture.setContractNumber("1");
        em.persist(facture);

        // Applique les modifications à la base de données
        tx.commit();
        System.out.println("Transaction confirmée");

        // Ferme la session et termine JPA
        em.close();
        emf.close();
    }



}
