class Laptop {
  int id;
  String modelo;
  int ram;
  int clockCpu;

  Laptop.build(this.id, this.modelo, this.ram, this.clockCpu);

  void mostrarDetalhes() {
    print("id: $id");
    print("modelo: $modelo");
    print("ram: ${ram}GB");
    print("clockCpu: $clockCpu");
    print("-------");
  }
}

class LaptopInternet extends Laptop {
  LaptopInternet(id, modelo, ram, clockCpu)
      : super.build(id, modelo, ram, clockCpu);

  void mostrarDetalhes() {
    print("Laptop para uso na Internet");
    print("id: $id");
    print("modelo: $modelo");
    print("ram: ${ram}GB");
    print("clockCpu: $clockCpu");
    print("-------");
  }
}

class LaptopEscritorio extends Laptop {
  LaptopEscritorio(id, modelo, ram, clockCpu)
      : super.build(id, modelo, ram, clockCpu);

  void mostrarDetalhes() {
    print("Laptop para trabalho de escritório");
    print("id: $id");
    print("modelo: $modelo");
    print("ram: ${ram}GB");
    print("clockCpu: $clockCpu");
    print("-------");
  }
}

class LaptopProgramacao extends Laptop {
  LaptopProgramacao(id, modelo, ram, clockCpu)
      : super.build(id, modelo, ram, clockCpu);

  void mostrarDetalhes() {
    print("Laptop para desenvolvimento");
    print("id: $id");
    print("modelo: $modelo");
    print("ram: ${ram}GB");
    print("clockCpu: $clockCpu");
    print("-------");
  }
}

void main() {
  Laptop laptop1 = LaptopEscritorio(1, "OfficeBook", 8, 4);
  Laptop laptop2 = LaptopProgramacao(2, "DevMachine", 16, 5);
  Laptop laptop3 = LaptopInternet(3, "WebLite", 4, 3);

  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}