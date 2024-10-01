void main() {
  // CASO DE PRUEBA 1 --- Enviando todos
  final juanPerez = Person(
    ID: 789,
    cortesyTitle: "Sr.",
    name: "Juan",
    firstLastname: "Vargas",
    secondLastname: "Rodriguez",
    gender: "Hombre",
    bloodGroup: "0-",
    photoURL: "images/photo.png",
    curp: "VERJ920805HPLRN07",
    birthdate: DateTime(2002,07,07),
    isActive: true,
    createdAt: DateTime(2024,09,2024,11,05,16),
  );

  print(juanPerez); 
  
  // CASO DE PRUEBA 2 --- Enviando solo los datos requeridos (obligatorios)
  final EmerVargas = Person(
    ID: 123,
    name: "Emerson",
    firstLastname: "Vargas",
    gender: "Hombre",
    bloodGroup: "0-",
    birthdate: DateTime(2002,07,07)
  );

  print(EmerVargas);
}

class Person {
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastname;
  String? secondLastname;
  String gender;
  String bloodGroup;
  String? photoURL;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;

  Person(
    {
      required this.ID,
      this.cortesyTitle,
      required this.name,
      required this.firstLastname,
      this.secondLastname,
      required this.gender,
      required this.bloodGroup,
      this.photoURL,
      this.curp,
      required this.birthdate,
      this.isActive= true,
      DateTime? createdAt,
      this.updatedAt
      }): createdAt= createdAt ?? DateTime.now();
  
  @override
  String toString(){
    final String formatedBirthDate=
      "${birthdate.day.toString().padLeft(2,'0')}/"+
        "${birthdate.month.toString().padLeft(2,'0')}/${birthdate.year}";

    final String formatedCreateDate=
      "${createdAt.day.toString().padLeft(2,'0')}/"+
        "${createdAt.month.toString().padLeft(2,'0')}/${createdAt.year}
    ${createdAt.hour.toString().padLeft(2,'0')}:${createdAt.minute.toString().padLeft(2
    ,'0')}:${createdAt.second.toString().padLeft(2,'0')}";

    curp ??= "No registrado";
    if (curp == "") curp = "No registrado";

    String status = "Sin definir";
    if (isActive)
      status = "Activo";
    else
      status = "Inactivo";

    
    return """
    --------------------------------------------------------------------------------------------------------
    DATOS DE LA PERSONA 
    --------------------------------------------------------------------------------------------------------
    ID: $ID,
    Nombre: $name $firstLastname $secondLastname
    Género: $gender
    Grupo sanguíneo: $bloodGroup
    Fecha de nacimiento: $formatedBirthDate
    Foto: $photoURL
    CURP: $curp
    Estatus: $status
    Fecha de registro: $formatedCreateDate
    --------------------------------------------------------------------------------------------------------
    """;
    
  }
  
}