// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  // carregar o framework Flutter
  //runApp(const PrincipalView());

  //carregar a dependência do Device Preview
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const PrincipalView(),
    ),
  );
}

//
// TELA PRINCIPAL
// stl+TAB ==> Stateless
//
class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Barra de Título
        appBar: AppBar(
          title: Text(
            'Hello App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
          //backgroundColor: Colors.blue.withOpacity(0.5),
        ),

        //Corpo
        body: Column(
          //Alinhamento do Eixo Principal
          mainAxisAlignment: MainAxisAlignment.start,

          //Alinhamento do Eixo Secundário
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: Center(
                child: Text('A'),
              ),
            ),
            Row(
              //Alinhamento do Eixo Principal
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                      child: Center(child: Text('B')),
                    ),
                  ],
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: Center(
                    child: Text('C'),
                  ),
                ),
              ],
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple,
              child: Center(
                child: Text('D'),
              ),
            ),
          ],
        ),

        backgroundColor: Colors.blue.shade100,
      ),
    );
  }
}
