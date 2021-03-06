import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import models.Facture;
import models.ListFactures;
import org.hibernate.ejb.HibernatePersistence;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.spi.PersistenceProvider;
import java.util.HashMap;
import java.util.List;

/**
 * Created by MACYLIA on 18/02/2017.
 */
public class ServiceFacture {


    public ServiceFacture() {
    }

    public boolean ajout(Facture facture) {
        boolean isCreated=false;

        PersistenceProvider persistenceProvider = new HibernatePersistence();
        EntityManagerFactory emf = persistenceProvider.createEntityManagerFactory("NewPersistenceUnit",new HashMap());

        try {

            EntityManager em = emf.createEntityManager();
           // System.out.println("Entity manager prêt");

            // Commence une transaction
            EntityTransaction tx = em.getTransaction();
            tx.begin();
          //  System.out.println("Début de la transaction");

            em.persist(facture);

            // Applique les modifications à la base de données
            tx.commit();
           // System.out.println("Transaction confirmée");
            isCreated=true;
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


//me retourne un string json avec la liste
public String lister ( )
{
    String json = null;

    PersistenceProvider persistenceProvider = new HibernatePersistence();
    EntityManagerFactory emf = persistenceProvider.createEntityManagerFactory("NewPersistenceUnit",new HashMap());

    try {

        EntityManager em = emf.createEntityManager();
       // System.out.println("Entity manager prêt");

        // Commence une transaction
        EntityTransaction tx = em.getTransaction();
        tx.begin();
       // System.out.println("Début de la transaction");

        Query query = em.createQuery("SELECT a FROM Facture a ORDER BY id DESC");

        @SuppressWarnings("unchecked")
        List<Facture> factures = (List<Facture>)query.getResultList();
      /*  for(Facture f : factures) {
            System.out.println(f);
        }*/
        //transformation en json
      //  System.out.println("creation object mapper");

         json = new Gson().toJson(factures);
      //  System.out.println(json);


        // Applique les modifications à la base de données
        tx.commit();
       // System.out.println("Transaction confirmée");
        // Ferme la session et termine JPA
        em.close();

    } catch (Exception e) {
        System.out.println("la fonction ajout crache");
        System.out.println(e.getMessage());
    } finally {
        //ne pas oublier de fermer la Session
        emf.close();

    }
    return json;
}

// me retourne la liste avec objets java facture
    public List<Facture> lister2 ( )
    {
        List<Facture> factures = null;

        PersistenceProvider persistenceProvider = new HibernatePersistence();
        EntityManagerFactory emf = persistenceProvider.createEntityManagerFactory("NewPersistenceUnit",new HashMap());

        try {

            EntityManager em = emf.createEntityManager();
            System.out.println("Entity manager prêt");

            // Commence une transaction
            EntityTransaction tx = em.getTransaction();
            tx.begin();
            System.out.println("Début de la transaction");

            Query query = em.createQuery("SELECT a FROM Facture a ORDER BY id DESC");

            factures = (List<Facture>)query.getResultList();
           // listFactures = new ListFactures(factures);
            for(Facture f : factures) {
                System.out.println(f);
            }

            // Applique les modifications à la base de données
            tx.commit();
            System.out.println("Transaction confirmée");
          // Ferme la session et termine JPA
            em.close();

        } catch (Exception e) {
            System.out.println("la fonction lister crache");
            System.out.println(e.getMessage());
        } finally {
            //ne pas oublier de fermer la Session
            emf.close();

        }
        return factures;


    }



    public boolean delete ( long idFacture)
    {
        boolean valider = false;

        PersistenceProvider persistenceProvider = new HibernatePersistence();
        EntityManagerFactory emf = persistenceProvider.createEntityManagerFactory("NewPersistenceUnit",new HashMap());

        try {

            EntityManager em = emf.createEntityManager();
        //    System.out.println("Entity manager prêt");

            // Commence une transaction
            EntityTransaction tx = em.getTransaction();
            tx.begin();
          //  System.out.println("Début de la transaction");

            Facture facture = em.find(Facture.class,idFacture);


            em.remove(facture);

            tx.commit();
            em.close();

            valider = true;
        } catch (Exception e) {
            System.out.println("la fonction delete crache");
            System.out.println(e.getMessage());
        } finally {
            //ne pas oublier de fermer la Session
            emf.close();

        }
        return valider;
    }


}
