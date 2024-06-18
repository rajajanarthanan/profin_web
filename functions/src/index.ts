/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

// import {onRequest} from "firebase-functions/v2/https";
// import * as logger from "firebase-functions/logger";

// Start writing functions
// https://firebase.google.com/docs/functions/typescript

// export const helloWorld = onRequest((request, response) => {
//   logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });


import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
import * as express from 'express';


// Initialize Firebase Admin SDK
admin.initializeApp();


const app = express();
// Define a route for /app/helloWorld
app.get('/app/helloWorld', (req, res) => {
    res.send('Hello from Firebase via Express!');
  });
  
  // Define a default route handler for other paths
  app.get('*', (req, res) => {
    res.status(404).send('Not Found');
  });
  
  // Export the Express app as a Firebase Function
  export const api = functions.https.onRequest(app);

// HTTPS function example
export const helloWorld = functions.https.onRequest((request, response) => {
  response.send("Hello from Firebase!");
});

// // Firestore trigger example
// export const onNewDocument = functions.firestore
//   .document('collection/{docId}')
//   .onCreate((snapshot, context) => {
//     const newValue = snapshot.data();
//     console.log('New document added:', newValue);
    
//     // Perform additional operations with Firestore data
    
//     return null; // or return a promise
//   });

// // Callable function example
// export const callableFunction = functions.https.onCall((data, context) => {
//   // Ensure user is authenticated
//   if (!context.auth) {
//     throw new functions.https.HttpsError('unauthenticated', 'User is not authenticated.');
//   }

//   const text = data.text; // Data passed from client
//   console.log('Received text:', text);

//   // Perform some operations
//   const uppercaseText = text.toUpperCase();

//   return { result: uppercaseText };
// });

// // Realtime Database trigger example
// export const onNewData = functions.database
//   .ref('/path/to/data/{pushId}')
//   .onCreate((snapshot, context) => {
//     const newData = snapshot.val();
//     console.log('New data added:', newData);
    
//     // Perform additional operations with Realtime Database data
    
//     return null; // or return a promise
//   });
