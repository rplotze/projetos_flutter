class Marca {
  final String codigo;
  final String nome;

  Marca(this.codigo, this.nome);

  factory Marca.fromJson(Map json) {
    return Marca(
      json['codigo'],
      json['nome'],
    );
  }
}
