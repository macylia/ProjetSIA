/**
 * Created by MACYLIA on 04/02/2017.
 */




public class Facture {


    private String docType;
    private String docTypeVersion;
    private String startDate;
    private String endDate;
    private String value;
    private String contractNumber;
    private String invoiceNumber;
    private String statementType;
    private String statementCategory;
    private String statementReason;


    public String get_docType() {return docType;}
    public String get_docTypeVersion() {return docTypeVersion;}
    public String get_startDate() {return startDate;}
    public String get_endDate() {return endDate;}
    public String get_value() {return value;}
    public String get_contractNumber() {return contractNumber;}
    public String get_invoiceNumber() {return invoiceNumber;}
    public String get_statementType() {return statementType;}
    public String get_statementCategory() {return statementCategory;}
    public String get_statementReason() {return statementReason;}


    public void setDocType(String docType) {
        this.docType = docType;
    }

    public void setDocTypeVersion(String docTypeVersion) {
        this.docTypeVersion = docTypeVersion;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public void setContractNumber(String contractNumber) {
        this.contractNumber = contractNumber;
    }

    public void setInvoiceNumber(String invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }

    public void setStatementType(String statementType) {
        this.statementType = statementType;
    }

    public void setStatementCategory(String statementCategory) {
        this.statementCategory = statementCategory;
    }

    public void setStatementReason(String statementReason) {
        this.statementReason = statementReason;
    }
}
