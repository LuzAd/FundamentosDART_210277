void main() {
// clase con parámetros posicionales los parámetros deben respetar su orden para ser asignados en la propiedad 
  final Hero wolverine = Hero("Logan", "Regeneración");
// Clase con parámetros no posicionales, los puedo mandar en desorden 
  final Group xmen = Group(name: "X-Men", type: "Heroes");
  final Group brotherhood = Group(name: "The brotherhood of evil mutants");

  print(wolverine.name);
  print(wolverine.power);
  print("------------------------------------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type); 
  print(xmen.toString()); 
  print("------------------------------------------------");
  print(brotherhood.name);
  print(brotherhood.type);  
// Invocando al método reescrito con @Override
  print(brotherhood.toString()); 

}

class Hero {

  String name;
  String power;

  Hero( String pName, String pPower)
    : name = pName,
      power = pPower;
}

class Group {

  String type;
  String name;

  Group({required this.name, this.type="No definido"});

  @override
  String toString()
  {
    return "Grupo: $name, Tipo: $type";
  }

}
