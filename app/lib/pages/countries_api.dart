import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class GetData {
  static Future countries() async {
    await Firebase.initializeApp();

    var db = FirebaseFirestore.instance;
    List countries = [];

    await db.collection("countries").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
        if (!countries.contains(doc.data()["country"])) {
          countries.add(doc.data()["country"]);
        }
      }
    });
    print(countries);
    return countries;

    // print(countries);
// Filtrar por pais
//   .collection("countries")
// .where("country", "==", "Argentina")
  }
}
