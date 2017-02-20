<%@ page import="models.Facture" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: MACYLIA
  Date: 03/01/2017
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>

<%-- lien vers les factures edf github : https://github.com/jacquarg/mesinfos-dev/commit/ebb0315898125804a1705576ef94821070d04a80 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <title id='Description'>Mes consomations</title>
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
        <script type="text/javascript" src="lib/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
        <script src="lib/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
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


        <script type="text/javascript" src="lib/jqxcore.js"></script>
        <script type="text/javascript" src="lib/jqxchart.core.js"></script>
        <script type="text/javascript" src="lib/jqxdraw.js"></script>
        <script type="text/javascript" src="lib/jqxdata.js"></script>
        <script type="text/javascript" src="tableau.js"></script>
    </head>
</head>
<body background="images/petiteFeuille.jpg" style=" background-repeat: no-repeat;" >
<div id="navbar" class="navbar navbar-inverse" style="background-color: #6B8E23; text-color: #0f0f0f">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="accueil.jsp">Acceuil</a>
        </div>
        <ul class="nav navbar-nav">

            <li><a href="emissions.jsp">Mes émissions</a></li>
            <li><a href="factures.jsp">Mes Factures</a></li>
            <li><a href="https://www.facebook.com/EcoConsom/?notif_t=fbpage_fan_invite&notif_id=1483439308812811">Notre
                page facebook </a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-user"></span> Déconnexion</a></li>
        </ul>

        </ul>
    </div>
</div>


<div class="col-sm-10 col-sm-offset-1 ">
    <h1 class="page-header"><i>Mes émissions de CO2 </i></h1>
    <div id='chartContainer' style="width:50%; height: 400px; border: solid	#9ACD32;"/>
</div>
</body>
</html>
