<%@ page import="models.ListFactures" %>
<%@ page import="models.Facture" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%--
  Created by IntelliJ IDEA.
  User: MACYLIA
  Date: 19/02/2017
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Table facture</title>
    <link rel="stylesheet" href="lib/jqx.base.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-dialog.min.css"/>
    <link rel="stylesheet" type="text/css" href="lib/datatables/1.10.12/css/dataTables.bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="lib/datatables/1.10.12/css/autoFill.bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="lib/datatables/1.10.12/css/buttons.bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="lib/datatables/1.10.12/css/responsive.bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="lib/datatables/1.10.12/css/select.bootstrap.min.css"/>


    <script src="lib/jquery/jquery-2.1.4.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/dataTables.autoFill.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/autoFill.bootstrap.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/buttons.bootstrap.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/buttons.colVis.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/responsive.bootstrap.min.js"></script>
    <script type="text/javascript" src="lib/datatables/1.10.12/js/dataTables.select.min.js"></script>


    <Script type = " text/javascript">
         $(Document).ready (function (){

             $('#tableFacture').DataTable({
                 sDom: "<'row'<'col-sm-2'><'col-md-4'f>><'row'<'col-sm-15'tr>><'row'<'col-sm-4'l><'col-sm-4'p>>",
                 responsive: true,
                 language: {
                     "url": "lib/datatables/French.json"
                 },
             });

                  });
    </Script>
</head>
<Body  >


        <Table id ="tableFacture" name="tableFacture" class="table table-striped table-bordered" cellspacing="0" width="50%" >
            <Thead>
            <Tr>
                <Th> Nom de l'entreprise </th>
                <Th> Adresse </th>
                <Th> Ville </th>
            </Tr>
            </Thead>
            <Tbody>
                     <%
                         List<Facture> list = (List<Facture>) request.getAttribute("listeFacture");

                         for (Facture f : list){            %>


            <Tr>
                            <Td> <%= f.get_docType()%> </ td>
                            <Td> <%= f.get_contractNumber()%> </ td>
                            <Td> <%= f.get_endDate()%> </ td>
                            </Tr>
            <%           }

                     %>
     </Tbody>
 </Table>
</Body>
</html>
