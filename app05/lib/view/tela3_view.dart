// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tela3View extends StatefulWidget {
  const Tela3View({super.key});

  @override
  State<Tela3View> createState() => _Tela3ViewState();
}

class _Tela3ViewState extends State<Tela3View> {
  @override
  Widget build(BuildContext context) {
    final nome = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 3: ${nome ?? ''}'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('anterior'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, 't4');
              },
              child: Text('próxima'),
            ),
          ],
        ),
      ),
    );
  }
}
