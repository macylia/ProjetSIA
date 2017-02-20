/**
 * Created by MACYLIA on 01/12/2016.
 */
$(document).ready(function () {

    // prepare chart data
    var  sampleData = [
        { Day:'Janvier', Keith:25,},
        { Day:'Fevrier', Keith:30, },
        { Day:'mars', Keith:35, },
        { Day:'avril', Keith:20, },
        { Day:'mais', Keith:30, },
        { Day:'juin', Keith:90,},
        { Day:'juillet', Keith:65, },
        { Day:'aout', Keith:40, },
        { Day:'septembre', Keith:20, },
        { Day:'octobre', Keith:80, },
        { Day:'novembre', Keith:10, },
        { Day:'decembre', Keith:75, }
    ];

    // prepare jqxChart settings
    var settings = {
        title: "L'evolution de votre impact écologique dans le temps ",
        description: "c'est un tableau de bord",
        padding: { left: 5, top: 10, right: 5, bottom: 5 },
        titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
        source: sampleData,
        xAxis: //l'axe des x
        {
            dataField: 'Day',
            //afficher une grille dans le graphe
            gridLines: {visible: false},
            tickMarks: {visible: false}
        },
        valueAxis: //l'axe des y
        {
            minValue: 0,
            maxValue: 100,
            unitInterval: 10,
            title: {text: 'Emission de CO2 (KG CO2)'}
        },
        colorScheme: 'scheme02',
        //choisir le type de graphe a afficher
        seriesGroups:
            [
                {
                    type: 'column',
                    columnsGapPercent: 30,
                    seriesGapPercent: 10,
                    series: [
                        { dataField: 'Keith', displayText: 'CO2 en KG/mois'}
                    ]
                }
            ]
    };

    // select the chartContainer DIV element and render the chart.
    $('#chartContainer').jqxChart(settings);



     $('#tableFacture').DataTable({
         sDom: "<'row'<'col-sm-2'B><'col-md-4'f>><'row'<'col-sm-15'tr>><'row'<'col-sm-4'l><'col-sm-4'p>>",
         responsive: true,
         buttons: [
             {
                 text: 'Créer une facture',
                 action: function (e, dt, node, config) {
                    $('#popup-grid-facture').modal('show');
                 }
             }],
         language: {
             "url": "lib/datatables/French.json"
         }
     });



    $("#container").load("contenu.html");


});