void main() {
  cadastrarFuncionario(nome: "João", cargo: "Programador");
  cadastrarFuncionario(nome: "Maria");
}

void cadastrarFuncionario({required String nome, String? cargo}) {
  if (cargo != null) {
    print("Bem-vindo $nome, seu cargo é $cargo.");
  } else {
    print("Bem-vindo $nome.");
  }
}