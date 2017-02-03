<%--
  Created by IntelliJ IDEA.
  User: MACYLIA
  Date: 31/01/2017
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajout d'une facture</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-dialog.min.css"/>
    <script src="lib/jquery/jquery-2.1.4.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
</head>
<body>
<form id="myform" class="form-wizard">
    <h2 class="form-wizard-heading">BootStap Wizzard Form</h2>
    <input type="text" value=""/>
    <input type="submit"/>
</form>

<!-- Modal -->
<div id="popup-grid-facture" class="modal  fade" tabindex="-1" role="dialog" >
    <div class="modal-dialog" style="width: 40%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="popup-title-facture">Créer une facture</h4>
            </div>
            <div class="modal-body">
                <form id="popup-form-facture" class='form-horizontal' role="form" data-parsley-validate>
                    <input style="display:none" id="id" name="id"/>

                    <div class="form-group">
                        <div class="col-sm-5">
                            <label for="firstName" class="sr-only">Prénom</label>
                            <input class="form-control" type="text" name="firstName" id="firstName" placeholder="Prénom" required
                                   autofocus/>
                        </div>
                        <div class="col-sm-5">
                            <label for="lastName" class="sr-only">Nom</label>
                            <input class="form-control " type="text" name="lastName" id="lastName" placeholder="Nom" required
                                   autofocus/>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal" >Annuler</button>
                        <button id="popup-submit-user" class="btn btn-primary validate" type="submit" >Créer</button>
                    </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</div>



<script type="text/javascript">
    $(document).ready(function () {
        $('#myform').on('submit', function (ev) {
            $('#popup-grid-facture').modal('show');
        });
    });
</script>
</body>
</html>
