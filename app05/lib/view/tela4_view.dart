// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tela4View extends StatefulWidget {
  const Tela4View({super.key});

  @override
  State<Tela4View> createState() => _Tela4ViewState();
}

class _Tela4ViewState extends State<Tela4View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 4'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
