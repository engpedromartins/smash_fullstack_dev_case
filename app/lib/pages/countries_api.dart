import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Data {
  static Future getCountries() async {
    await Firebase.initializeApp();

    List countries = [];

    var db = FirebaseFirestore.instance;
    await db.collection("countries").get().then((event) {
      for (var doc in event.docs) {
        if (!countries.contains(doc.data()["country"])) {
          countries.add(doc.data()["country"]);
        }
      }
    });
    return countries;
  }

  static Future getCities(String country) async {
    await Firebase.initializeApp();

    List cities = [];

    var db = FirebaseFirestore.instance;
    await db
        .collection("countries")
        .where("country", isEqualTo: country)
        .get()
        .then((event) {
      for (var doc in event.docs) {
        cities.add(doc.data());
      }
      return event.docs;
    });
    return cities;
  }
}
