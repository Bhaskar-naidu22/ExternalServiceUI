sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/deloitte/sap/salesorganisation/test/integration/FirstJourney',
		'com/deloitte/sap/salesorganisation/test/integration/pages/SalesDetailsList',
		'com/deloitte/sap/salesorganisation/test/integration/pages/SalesDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesDetailsList, SalesDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/deloitte/sap/salesorganisation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesDetailsList: SalesDetailsList,
					onTheSalesDetailsObjectPage: SalesDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);