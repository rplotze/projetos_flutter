import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/marca.dart';

class FipeService {
  //
  // Retornar a lista de Estados
  //
  Future<List<Marca>> listarMarcas() async {
    var resposta = await http.get(
      Uri.parse(
        'https://parallelum.com.br/fipe/api/v1/carros/marcas',
      ),
    );

    if (resposta.statusCode == 200) {
      Iterable lista = json.decode(resposta.body);
      return lista.map((modelo) => Marca.fromJson(modelo)).toList();
    } else {
      return [];
    }
  }
}
