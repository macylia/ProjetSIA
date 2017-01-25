<%--
  Created by IntelliJ IDEA.
  User: MACYLIA
  Date: 03/01/2017
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <title id='Description'>Mes consomations</title>
        <link rel="stylesheet" href="lib/jqx.base.css" type="text/css" />
        <link rel="stylesheet" type="text/css" href="libFont/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="libFont/bootstrap/css/bootstrap-dialog.min.css"/>
        <link rel="stylesheet" type="text/css" href="libFont/datatables/1.10.12/css/dataTables.bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="libFont/datatables/1.10.12/css/autoFill.bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="libFont/datatables/1.10.12/css/buttons.bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="libFont/datatables/1.10.12/css/responsive.bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="libFont/datatables/1.10.12/css/select.bootstrap.min.css"/>



        <script src="libFont/jquery/jquery-2.1.4.min.js"></script>
        <script src="libFont/bootstrap/js/bootstrap.min.js"></script>
        <script src="libFont/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/dataTables.autoFill.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/autoFill.bootstrap.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/buttons.bootstrap.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/buttons.colVis.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/responsive.bootstrap.min.js"></script>
        <script type="text/javascript" src="libFont/datatables/1.10.12/js/dataTables.select.min.js"></script>

        <script type="text/javascript" src="lib/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="lib/jqxcore.js"></script>
        <script type="text/javascript" src="lib/jqxchart.core.js"></script>
        <script type="text/javascript" src="lib/jqxdraw.js"></script>
        <script type="text/javascript" src="lib/jqxdata.js"></script>
        <script type="text/javascript" src="tableau.js"></script>

    </head>
</head>
<body background="images/petiteFeuille.jpg" >
<div id="navbar" class="navbar navbar-inverse">
    <ul class="nav navbar-nav">
        <li><a href="acceuil.jsp">Acceuil</a> </li>
        <li><a href="emissions.jsp">Mes émissions</a> </li>
        <li><a href="https://www.facebook.com/EcoConsom/?notif_t=fbpage_fan_invite&notif_id=1483439308812811">Notre page facebook </a> </li>
        <li><a href="index.jsp">Déconnexion</a> </li>
    </ul>
</div>


<h1 align="right" style="margin-right: 2cm"><i>Mes émissions de CO2 </i> </h1>

<div id='chartContainer' style="width:600px; height: 400px"/>

<h2 class="page-header">Tableau</h2>
<table id="tableFacture" class="table table-striped table-bordered" cellspacing="0" width="100%">
</table>




</body>
</html>
