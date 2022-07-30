// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListCities extends StatelessWidget {
  const ListCities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }
}

_appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 120,
    // toolbarOpacity: 0.5,
    title: Image.network(
        'https://cdn.greatsoftwares.com.br/arquivos/paginas_publicadas/www.smash.gifts/imagens/desktop/1657028251-7349535-621-efd2a587cf8b3511c2bb6ba5305fa841.png'),
  );
}

_body() {
  // var db = FirebaseFirestore.instance;
  // var countries = [];

  // await db.collection("countries").get().then((event) {
  //   for (var doc in event.docs) {
  //     print("${doc.id} => ${doc.data()}");
  //     if (!countries.contains(doc.data()["country"])) {
  //       countries.add(doc.data()["country"]);
  //     }
  //   }
  // });
  // print(countries);
// Filtrar por pais
//   .collection("countries")
// .where("country", "==", "Argentina")

  return ListView(children: <Widget>[
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("ALgum país"),
      subtitle: Text("Estado"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Argentina");
      },
    )
  ]);
}
