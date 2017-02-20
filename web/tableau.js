/**
 * Created by MACYLIA on 01/12/2016.
 */
$(document).ready(function () {

    if (typeof EcoConsom == "undefined" || !EcoConsom) {
        window.EcoConsom = {};
    }



    EcoConsom.tableFacture = $('#tableFacture').DataTable({
        sDom: "<'row'<'col-md-6'B><'col-sm-15'f>><'row'<'col-sm-15'tr>><'row'<'col-sm-4'l><'col-sm-4'p><'col-sm-4'i>>",
        responsive: true,
        buttons: [
            {
                text: 'Créer une facture',
                action: function (e, dt, node, config) {
                    $('#popup-grid-facture').modal('show');
                }
            }],
        "ajax": {
            "url": "/ServletListeFacture",
            "dataSrc": ""
        },
        language: {
            "url": "lib/datatables/French.json"
        },
        columns: [
            {"data": "id",title: "id"},
            {"data": "startDate", title: "Date"},
            {"data": "invoiceNumber", title: "Numero de facture"},
            {"data": "contractNumber", title: "Numero du contrat"},
            {"data": "value", title: "Emission de co2"},
            {
                "data": null, title: "Actions", width: "20px", "render": function (data, type, row) {
                return '<a class="glyphicon glyphicon-pencil"></a> &nbsp; <a class="glyphicon glyphicon-remove"></a>';
            }
            }
        ]
    });



    $('#tableFacture tbody').on('click', 'a.glyphicon-pencil', function (event) {
        var row = EcoConsom.tableFacture.row($(this).parents('tr')).data();
        $('#popup-grid-facture').modal('show');
    });



    $('#tableFacture tbody').on('click', 'a.glyphicon-remove', function (event) {
        var row = EcoConsom.tableFacture.row($(this).parents('tr')).data();
        var id = row.id;
        BootstrapDialog.confirm("Supprimer la facture du (" + row.startDate + ") ? ",
            function (result) {
                if (result) {
                    $.ajax({
                        type: "POST",
                        url: "/ServletDelete",
                        data: 'id='+ id,
                        success: function (msg) {
                            $.notify("La Facture a était suprimé");

                            EcoConsom.tableFacture.row(row).remove().draw();
                        },
                        error: function () {
                            BootstrapDialog.show({
                                type: BootstrapDialog.TYPE_WARNING,
                                message: "La facture n'a pas pu être supprimée, contacter l'administrateur."
                            });
                        }
                    });
                }
            });

    });






   function afficheGraphe()
    {
        $.get("/ServletListeFacture", function(responseText) {
            var listeFactures = responseText;

    // prepare jqxChart settings
    var settings = {
        title: "L'evolution de votre impact écologique dans le temps ",
        description: "c'est un tableau de bord",
        padding: { left: 5, top: 10, right: 5, bottom: 5 },
        titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
        source: listeFactures,
        xAxis: //l'axe des x
        {
            dataField: 'startDate',
            formatFunction: function (value) {
                var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                return months[new Date(value).getMonth()];
            },
            //afficher une grille dans le graphe
            gridLines: {visible: false},
            tickMarks: {visible: false}
        },
        valueAxis: //l'axe des y
        {
            minValue: 0,
            unitInterval: 50,
            title: {text: 'Emission de CO2 (KG CO2)'}
        },
        colorScheme: 'scheme02',
        //choisir le type de graphe a afficher
        seriesGroups:
            [
                {
                    type: 'spline',
                    title: 'spline',
                    markers: { type: 'diamond', size: 10 },
                    series: [
                        { dataField: 'value',
                            formatFunction: function (value) {
                                return value *6;
                            },
                            displayText: 'CO2 en KG/mois'}

                    ]
                }
            ]
    };


            $('#chartContainer').jqxChart(settings);

        });
    }
    afficheGraphe();

});