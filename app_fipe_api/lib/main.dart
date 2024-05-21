// ignore_for_file: prefer_const_constructors

import 'package:app_fipe_api/model/marca.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'repository/fipe_service.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: Column(
            children: [
              FutureBuilder(
                future: FipeService().listarMarcas(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    var lista = snapshot.data as List<Marca>;
                    return DropdownMenu(
                      width: 360,
                      onSelected: (value) {},
                      dropdownMenuEntries:
                          lista.map<DropdownMenuEntry<String>>((Marca marca) {
                        return DropdownMenuEntry<String>(
                          value: marca.codigo,
                          label: marca.nome,
                        );
                      }).toList(),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
