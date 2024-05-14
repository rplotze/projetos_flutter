import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/tarefa.dart';
import '../view/util.dart';
import 'login_controller.dart';

class TarefaController {
  //Adicionar uma nova tarefa
  adicionar(context, Tarefa t) {
    FirebaseFirestore.instance
        .collection('tarefas')
        .add(t.toJson())
        .then((resultado) {
      sucesso(context, 'Tarefa adicionada com sucesso!');
    }).catchError((e) {
      erro(context, 'Não foi possível adicionar a tarefa.');
    }).whenComplete(() => Navigator.pop(context));
  }

  //Listar todas as tarefas do usuário logado
  listar() {
    return FirebaseFirestore.instance
        .collection('tarefas')
        .where('uid', isEqualTo: LoginController().idUsuarioLogado());
  }

  pesquisar(titulo) {
    return FirebaseFirestore.instance
        .collection('tarefas')
        .where('uid', isEqualTo: LoginController().idUsuarioLogado())
        .where('titulo', isEqualTo: titulo);
  }

  //Excluir tarefa
  excluir(context, id) {
    FirebaseFirestore.instance
        .collection('tarefas')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Tarefa excluída com sucesso!'))
        .catchError((e) => erro(context, 'Não foi possível excluir a tarefa.'));
  }

  //Atualizar uma tarefa
  atualizar(context, id, Tarefa t) {
    FirebaseFirestore.instance
        .collection('tarefas')
        .doc(id)
        .update(t.toJson())
        .then((value) => sucesso(context, 'Tarefa atualizada com sucesso!'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizada a tarefa.'))
        .whenComplete(() => Navigator.pop(context));
  }
}
