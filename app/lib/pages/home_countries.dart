import 'package:flutter/material.dart';

class HomeCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Countries'),
        ),
        body: _body());
  }
}

_body() {
  return Center(
    child: Text('Countries'),
  );
}
