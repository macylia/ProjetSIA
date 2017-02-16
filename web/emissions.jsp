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


        <script type="text/javascript" src="lib/jqxcore.js"></script>
        <script type="text/javascript" src="lib/jqxchart.core.js"></script>
        <script type="text/javascript" src="lib/jqxdraw.js"></script>
        <script type="text/javascript" src="lib/jqxdata.js"></script>
        <script type="text/javascript" src="tableau.js"></script>
        <style>
            div.dataTables_length {
                float: left;

            }

            div.dataTables_filter {
                float: right;

            }

            div.dataTables_paginate {
                float: left;
                background-color: #9ACD32;
            }

            a.btn {
                background-color: #9ACD32;
            }

            table thead {
                text-align: center;
                background-color: #9ACD32;
            }
        </style>

    </head>
</head>
<body background="images/petiteFeuille.jpg">
<div id="navbar" class="navbar navbar-inverse" style="background-color: #6B8E23; text-color: #0f0f0f">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="accueil.jsp">Acceuil</a>
        </div>
        <ul class="nav navbar-nav">

            <li><a href="emissions.jsp">Mes émissions</a></li>
            <li><a href="https://www.facebook.com/EcoConsom/?notif_t=fbpage_fan_invite&notif_id=1483439308812811">Notre
                page facebook </a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-user"></span> Déconnexion</a></li>
        </ul>

        </ul>
    </div>
</div>


<h1 align="right" style="margin-right: 2cm; margin-top: 0cm"><i>Mes émissions de CO2 </i></h1>

<div id="popup-grid-facture" class="modal  fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" style="width: 30%;">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #9ACD32">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="popup-title-facture">Créer une facture</h4>
            </div>
            <div class="modal-body">
                <form method ="POST" action ="ServletFacture" id="popup-form-facture" class='form-horizontal' role="form" data-parsley-validate >
                    <input style="display:none" id="id" name="id"/>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <label for="docType" class="sr-only">docType</label>
                            <input class="form-control" type="text" name="docType" id="docType" placeholder="docType"
                                   autofocus/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <label for="docTypeVersion" class="sr-only">docTypeVersion</label>
                            <input class="form-control" type="text" name="docTypeVersion" id="docTypeVersion"
                                   placeholder="docTypeVersion" autofocus/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <label for="startDate" class="sr-only">Date de début</label>
                            <input class="form-control" type="date" name="startDate" id="startDate"
                                   placeholder="Date de début" autofocus required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <label for="endDate" class="sr-only">Date de fin</label>
                            <input class="form-control" type="date" name="endDate" id="endDate"
                                   placeholder="Date de fin" autofocus required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <label for="value" class="sr-only">Consomation</label>
                            <input class="form-control" type="number" name="value" id="value" placeholder="Consomation"
                                   autofocus required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <label for="contractNumber" class="sr-only">Numéro du contrat</label>
                            <input class="form-control " type="number" name="contractNumber" id="contractNumber"
                                   placeholder="Numéro du contrat" required
                                   autofocus/>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal">Annuler</button>
                        <button id="popup-submit-user" class="btn btn-success validate" type="submit">Cxréer</button>
                    </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</div>


<table id="tableFacture" name="tableFacture" class="table table-striped table-bordered" cellspacing="0" width="50%">
</table>
<br>


<div id='chartContainer' style="width:50%; height: 400px; border: solid	#9ACD32;"/>


</body>
</html>
