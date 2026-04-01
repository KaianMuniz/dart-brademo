void main() {
  Laptop l1 = Laptop(1, "Dell", 8, 2.5);
  Laptop l2 = Laptop(2, "Lenovo", 16, 3.0);
  Laptop l3 = Laptop(3, "Acer", 4, 2.0);

  l1.mostrar();
  l2.mostrar();
  l3.mostrar();
}

class Laptop {
  int id;
  String nome;
  int ram;
  double clockCpu;

  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  void mostrar() {
    print("ID: $id");
    print("Nome: $nome");
    print("RAM: $ram GB");
    print("Clock CPU: $clockCpu GHz");
    print("-----");
  }
}
