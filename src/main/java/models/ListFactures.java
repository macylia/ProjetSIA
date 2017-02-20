package models;

import java.util.List;

/**
 * Created by MACYLIA on 19/02/2017.
 */
public class ListFactures {
    List<Facture> listFactures ;

    public ListFactures(List<Facture> listFactures) {
        this.listFactures = listFactures;
    }

    public List<Facture> getListFactures() {
        return listFactures;
    }

    public void setListFactures(List<Facture> listFactures) {
        this.listFactures = listFactures;
    }
}
