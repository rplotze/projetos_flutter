// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../model/contato.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  //declaração da lista dinâmica de contatos
  List<Contato> lista = [];

  @override
  void initState() {
    lista = Contato.gerarLista();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        //
        // ListView
        //
        child: ListView.builder(
          //Quantidade de itens
          itemCount: lista.length,
          //Aparência de cada item
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(lista[index].nome),
                subtitle: Text(lista[index].email),

                hoverColor: Colors.red.shade50,
                //pressionar um item da lista
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(lista[index].nome)),
                  );
                },
                //remover um item da lista
                onLongPress: () {
                  setState(() {
                    lista.removeAt(index);
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
