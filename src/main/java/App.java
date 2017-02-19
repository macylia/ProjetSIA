import models.Facture;
import org.hibernate.ejb.HibernatePersistence;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.spi.PersistenceProvider;
import java.util.HashMap;

/**
 * Created by MACYLIA on 16/02/2017.
 */
public class App {
    public App() {
    }

    public boolean ajout(Facture facture) {
        System.out.println("-------------------------------");
        boolean isCreated=false;

        PersistenceProvider persistenceProvider = new HibernatePersistence();
        EntityManagerFactory emf = persistenceProvider.createEntityManagerFactory("NewPersistenceUnit",new HashMap());

        try {

        EntityManager em = emf.createEntityManager();
        System.out.println("Entity manager prêt");

        // Commence une transaction
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        System.out.println("Début de la transaction");

        em.persist(facture);

        // Applique les modifications à la base de données
        tx.commit();
        System.out.println("Transaction confirmée");
        isCreated=false;
        // Ferme la session et termine JPA
        em.close();

        } catch (Exception e) {
            System.out.println("la fonction crache");
            System.out.println(e.getMessage());
        } finally {
            //ne pas oublier de fermer la Session
            emf.close();
        }



    return isCreated;
    }




}
