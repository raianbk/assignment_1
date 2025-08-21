// THIS IS THE PRACTICE WEEK ASSIGNMENT
// ZOO MANAGEMENT SYSTEM

abstract class Animal {
  final String _name;

  Animal(this._name);

  void makeSound();

  String get getName => _name;
}

class Lion extends Animal {
  double _maneSize;

  Lion(this._maneSize, String name) : super(name);

  double get maneSize => _maneSize;

  set maneSize(double size) {
    if (size >= 0) {
      _maneSize = size;
    } else {
      print("Mane size cannot be negative. Keeping old value: $_maneSize");
    }
  }

  @override
  void makeSound() {
    // TODO: implement getName
    print("Rawr");
  }
}

class Elephant extends Animal {
  double _trunkLength;

  Elephant(this._trunkLength, String name) : super(name);

  double get trunkLength => _trunkLength;

  set trunkLength(double size) {
    if (size >= 0) {
      _trunkLength = size;
    } else {
      print("Trunk size cannot be negative. Keeping old value: $_trunkLength");
    }
  }

  @override
  void makeSound() {
    // TODO: implement getName
    print("Poooo");
  }
}

class Parrot extends Animal {
  double _vocabSize;

  Parrot(this._vocabSize, String name) : super(name);

  double get vocabSize => _vocabSize;

  set vocabSize(double size) {
    if (size >= 0) {
      _vocabSize = size;
    } else {
      print("Vocab size cannot be negative. Keeping old value: $_vocabSize");
    }
  }

  @override
  void makeSound() {
    // TODO: implement getName
    print("caw!! Hello");
  }
}

void main() {
  List<Animal> zoo = [
    Lion(20, "Simba"),
    Elephant(100, "Dumbo"),
    Parrot(20, "Mr. Parrot"),
  ];

  for (var animal in zoo) {
    print("Name:${animal.getName} ");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} cm");
      animal.maneSize = -10;
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} cm");
      animal.trunkLength = -100;
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabSize} words");
      animal.vocabSize = -100;
    }

    animal.makeSound();
    print("\n");
  }
}
