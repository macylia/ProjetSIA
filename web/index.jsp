<%--
  Created by IntelliJ IDEA.
  User: MACYLIA
  Date: 03/01/2017
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
.modal-header {
background-color: #00802b;
}
    body{
        background-color:#e6ffee;
    }
</style>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>	Login</title>
    <link rel="stylesheet" type="text/css" href="libFont/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="libFont/bootstrap/css/bootstrap-dialog.min.css"/>
    <script src="libFont/bootstrap/js/bootstrap-dialog.min.js"></script>
    <script src="libFont/bootstrap/js/bootstrap.min.js"></script>
    <script src="libFont/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
    <script src="libFont/jquery/jquery-2.1.4.min.js"></script>
</head>
<body  background="images/feuille.jpg"  style="background-color:#b3ffcc;">
<div id="popup-grid-login"  role="dialog">
    <div class="modal-dialog" style="width: 40%;">
        <div class="modal-content panel-info">
            <div class="modal-header panel-heading" >
                <h4 class="modal-title panel-title" id="popup-title-fournisseur">Login to EcoConso</h4>
            </div>
            <form method ="post" action ="acceuil.jsp"  id="popup-form-login" role="form" >

                <div class="modal-body panel-body">

                    <div class="col-sm-6">
                        <label for="login" >Login</label>
                        <input class="form-control" type="text" name="login" id="login"  placeholder="Login" required
                               autofocus/>
                    </div>

                    <div class="col-sm-6">
                        <label for="password" >Password</label>
                        <input class="form-control" type="password" name="password" id="password" placeholder="Password" required />
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal"  type ="reset" value = "Reset">Annuler</button>
                    <button id="popup-submit-login" class="btn btn-primary validate" type="submit" value = "Submit">Se connecter</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>