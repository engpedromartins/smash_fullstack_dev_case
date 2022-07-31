import 'package:app/service/countries_api.dart';
import 'package:flutter/material.dart';

//Pagina secundária da aplicação
class ListCities extends StatelessWidget {
  const ListCities({super.key, required this.country});
  final String country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(country),
    );
  }
}

_appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    toolbarHeight: 120,
    // toolbarOpacity: 0.5,
    title: Image.network(
        'https://cdn.greatsoftwares.com.br/arquivos/paginas_publicadas/www.smash.gifts/imagens/desktop/1657028251-7349535-621-efd2a587cf8b3511c2bb6ba5305fa841.png'),
  );
}

//Body da pagina secundária
_body(country) {
  Future cities = Data.getCities(country);
  return FutureBuilder(
    future: cities,
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (!snapshot.hasData) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        List cities = snapshot.data;
        return ListView.builder(
          itemCount: cities.length,
          itemBuilder: (BuildContext context, int index) {
            return _listCities(context, cities[index]);
          },
        );
      }
    },
  );
}

//Lista de cidades
_listCities(context, Map city) {
  return Container(
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
      title: Text(city["city"], style: const TextStyle(fontSize: 20)),
      subtitle: Text(city["subcountry"]),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        () => {};
      },
    ),
  );
}
