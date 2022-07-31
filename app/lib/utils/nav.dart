import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page) async {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (BuildContext) => page),
  );
}
