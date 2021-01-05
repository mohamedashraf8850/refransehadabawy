const functions = require('firebase-functions');
const admin = require('firebase-admin');
const { userRecordConstructor } = require('firebase-functions/lib/providers/auth');
const { auth } = require('firebase-admin');
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

exports.deleteUserByEmail = functions.https.onRequest(async (request , response)=> {
    const userEmail = request.body.userEmail;
    admin.auth().getUserByEmail(userEmail)
        .then(userRecord => {
            const uid = userRecord.uid
            return admin.auth().deleteUser(uid)
        })
        .then(()=>{
            console.log('Successfully delete user.')
            response.status(200).send('deleted User')
            return 
        })
        .catch(error => {
            console.log('Error deleteting user:'.error)
            response.status(500).send('Failed')
        })
})

exports.disableUserByEmail = functions.https.onRequest(async (request , response)=> {
    const userEmail = request.body.userEmail;
    admin.auth().getUserByEmail(userEmail)
        .then(userRecord => {
            const uid = userRecord.uid
            return admin.auth().updateUser(uid, {
               disabled:true
            });
        })
        .then(()=>{
            console.log('Successfully blocking user.')
            response.status(200).send('blocked User')
            return 
        })
        .catch(error => {
            console.log('Error blocking user:'.error)
            response.status(500).send('Failed')
        })
})
exports.enableUserByEmail = functions.https.onRequest(async (request , response)=> {
    const userEmail = request.body.userEmail;
    admin.auth().getUserByEmail(userEmail)
        .then(userRecord => {
            const uid = userRecord.uid
            return admin.auth().updateUser(uid, {
               disabled:false
            });
        })
        .then(()=>{
            console.log('Successfully Unblocking user.')
            response.status(200).send('UnBlocked User')
            return 
        })
        .catch(error => {
            console.log('Error blocking user:'.error)
            response.status(500).send('Failed')
        })
})



