class Cliente {
  String nome = "";
  String telefone = "";
  String email = "";
  Cliente(this.nome, this.telefone, this.email);
  // Cliente({required this.nome, required this.telefone, required this.email});

  // factory Cliente.fronJson(Map<String, dynamic> json) {
  //   return Cliente(
  //       nome: json['nome'], telefone: json['telefone'], email: json['email']);
  // }
}
