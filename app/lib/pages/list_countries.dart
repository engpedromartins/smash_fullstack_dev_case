import 'package:flutter/material.dart';

class ListCountries extends StatelessWidget {
  const ListCountries({super.key});

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
  return const Center(
    child: Text("Hellosadss World"),
  );
}
