<%--
  Created by IntelliJ IDEA.
  User: MACYLIA
  Date: 03/01/2017
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Accueil utilsateur</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-dialog.min.css"/>

    <script src="lib/jquery/jquery-2.1.4.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
  </head>
<body background="images/petiteFeuille.jpg" >
<div id="navbar" class="navbar navbar-inverse">
    <ul class="nav navbar-nav">
        <li><a href="accueil.jsp">Acceuil</a> </li>
        <li><a href="emissions.jsp">Mes émissions</a> </li>
        <li><a href="https://www.facebook.com/EcoConsom/?notif_t=fbpage_fan_invite&notif_id=1483439308812811">Notre page facebook </a> </li>
        <li><a href="index.jsp">Déconnexion</a> </li>

    </ul>
</div>
<h1 align="right" style="margin-right: 2cm"><i>Bienvenu cher utilisateur </i> </h1>

<iframe width="600" height="300" src="https://www.youtube.com/embed/FpKvPcfBs1I" frameborder="5" ></iframe>
</br>
<iframe width="600" height="300" src="https://www.youtube.com/embed/syU1rRCp7E8" frameborder="5" ></iframe>
<%

    String attribut = (String) request.getAttribute("test");
     //out.print(attribut)  ;

%>

</body>
</html>