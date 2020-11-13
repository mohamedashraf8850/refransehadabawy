const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp(functions.config().functions);

exports.orderTrigger=functions.firestore.document('Trips/{tripId}').onCreate(
    async (snapshot,context) =>
    {
        var payload={
            notification:{
                title:'New Order',body:'Check New Trip'},
                data: {click_action:'FLUTTER_NOTIFICATION_CLICK'}}

                const response=await admin.messaging().sendToTopic('Online',payload);
        }
);