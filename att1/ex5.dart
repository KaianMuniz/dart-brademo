import 'dart:io';

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> casas = [];

  for (int i = 0; i < 3; i++) {
    print("Digite o id da casa:");
    int id = int.parse(stdin.readLineSync()!);

    print("Digite o nome da casa:");
    String name = stdin.readLineSync()!;

    print("Digite o preço da casa:");
    double price = double.parse(stdin.readLineSync()!);

    House casa = House(id, name, price)
      ..name = "$name (Cadastrada)"; // cascade notation

    casas.add(casa);
  }

  for (var casa in casas) {
    print("ID: ${casa.id}");
    print("Nome: ${casa.name}");
    print("Preço: ${casa.price}");
    print("------");
  }
}