import 'package:flutter/material.dart';

//Faz a navegação entre paginas
Future push(BuildContext context, Widget page) async {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (BuildContext) => page),
  );
}
