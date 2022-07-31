import 'package:app/service/countries_api.dart';
import 'package:app/pages/list_cities.dart';
import 'package:flutter/material.dart';

import '../utils/nav.dart';

//Pagina principal da aplicação
class ListCountries extends StatelessWidget {
  const ListCountries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
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

//Body da pagina principal
_body(context) {
  Future countries = Data.getCountries();
  return FutureBuilder(
    future: countries,
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (!snapshot.hasData) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        List countries = snapshot.data;
        return ListView.builder(
          itemCount: countries.length,
          itemBuilder: (BuildContext context, int index) {
            return _listCountries(context, countries[index]);
          },
        );
      }
    },
  );
}

//Lista de paises
_listCountries(context, String country) {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    ),
    child: ListTile(
      leading: const Icon(Icons.map),
      title: Text(country, style: const TextStyle(fontSize: 20)),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        push(context, ListCities(country: country));
      },
    ),
  );
}
