// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

//
// MainApp
//
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrincipalView(),
    );
  }
}

//
// PrincipalView
//
class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  //Chave para o formulário
  var formKey = GlobalKey<FormState>();
  var status = false;

  //Controladores para os Campos de Texto
  var txtValor1 = TextEditingController();
  var txtValor2 = TextEditingController();

  //
  // CAIXA DE DIÁLOGO
  //
  caixaDialogo(context, titulo, mensagem) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(titulo),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'cancelar'),
            child: Text('cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'ok'),
            child: Text('ok'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: SingleChildScrollView(

          //Direção da barra de rolagem
          scrollDirection: Axis.vertical,

          child: Form(
            key: formKey,
            child: Column(
              children: [
                //
                // Ícone
                //
                Icon(
                  Icons.sentiment_satisfied,
                  size: 120,
                  color: Colors.blue.shade900,
                ),

                //
                // IMAGEM
                //
                /*Image.asset(
                  'lib/imagens/img1.jpg',
                  width: 200,
                  height: 200,
                ),*/

                Image.network('https://picsum.photos/200/200'),

                SizedBox(height: 30),
                TextFormField(
                  controller: txtValor1,

                  decoration: InputDecoration(
                    labelText: 'Valor 1',
                    border: OutlineInputBorder(),
                  ),

                  //
                  // Validação
                  //
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe um valor';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: txtValor2,

                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Valor 2',
                    border: OutlineInputBorder(),
                  ),

                  //
                  // Validação
                  //
                  validator: (value) {
                    if (value == null) {
                      return 'Informe um valor';
                    } else if (value.isEmpty) {
                      return 'Informe um valor';
                    } else if (double.tryParse(value) == null) {
                      return 'Informe um valor NUMÉRICO';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),

                //ElevatedButton
                //TextButton
                //OutlinedButton
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200, 60),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    //
                    // Executar o processo de VALIDAÇÃO
                    //
                    if (formKey.currentState!.validate()) {
                      //Validação com sucesso

                      //
                      // Recuperar as informações contidas nos
                      // Campos de texto
                      //
                      setState(() {
                        var v1 = txtValor1.text;
                        var v2 = double.parse(txtValor2.text);
                        var msg = 'Valores\nValor 1: $v1\nValor 2:$v2';
                        caixaDialogo(context, 'Título', msg);
                      });
                    } else {
                      //Erro na Validação
                    }
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(fontSize: 36),
                  ),
                ),

                SizedBox(height: 30),
                Switch(
                  value: status,
                  onChanged: (bool value) {
                    setState(() {
                      status = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
