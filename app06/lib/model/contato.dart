class Contato {
  final String nome;
  final String email;

  Contato(this.nome, this.email);

  //geração de uma lista dinâmica de contatos
  static List<Contato> gerarLista() {
    List<Contato> lista = [];
    for (int i = 1; i <= 1; i++) {
      lista.add(Contato('João da Silva', 'joao@email.com'));
      lista.add(Contato('José Antônio', 'jose@email.com'));
      lista.add(Contato('Ana Maria', 'joao@email.com'));
      lista.add(Contato('Carla Fernanda', 'joao@email.com'));
    }
    return lista;
  }
}
