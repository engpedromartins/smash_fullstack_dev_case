const fs = require('fs')
// Import the functions you need from the SDKs you need
const { initializeApp } = require("firebase/app");
const { getFirestore, doc, setDoc } = require('firebase/firestore');


const firebaseConfig = {
  apiKey: "AIzaSyCDIgz6MktniZZn57wiQltnUIOy_yLR3fk",
  authDomain: "smash-fullstack-dev-case.firebaseapp.com",
  projectId: "smash-fullstack-dev-case",
  storageBucket: "smash-fullstack-dev-case.appspot.com",
  messagingSenderId: "904923909009",
  appId: "1:904923909009:web:2206784e4d3cab84d52830",
  measurementId: "G-CSB3HCRXPK"
};

// Initialize Firebase
const firebaseApp = initializeApp(firebaseConfig);


var data = fs.readFileSync(__dirname + "/../data/world-cities.csv", "utf8")
data = data.split("\n")

const firestore = getFirestore(firebaseApp);
let count = 0;
for (let i = 1; i < data.length; i++) {
  count = i
  data[i] = data[i].match(/(".*?"|[^",\s]+)(?=\s*,|\s*$)/g)

  setDoc(doc(firestore, `countries/${data[i][3]}`), {
    cities: data[i][0],
    country: data[i][1],
    subcountry: data[i][2],
  }, { merge: true })
}

console.log('finished with', count, 'countries')