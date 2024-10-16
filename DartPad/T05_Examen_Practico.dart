void main() {
  GymSystem gymSystem = GymSystem();

  // CASO 1: MIEMBRO NUEVO
  Member emerson = Member(
    cortesyTitle: 'Ing.',
    name: 'Emerson',
    firstLastname: 'Vargas',
    secondLastname: 'Ramirez',
    gender: Gender.M,
    bloodgroup: BloodGroup.A_pos,
    photoURL: 'https://ej.com/photo_emer.jpg',
    birthdate: DateTime(2002, 7, 7),
    isActive: true,
    createdAt: DateTime.now(),
    lastVisit: DateTime.now(),
    updatedAt: DateTime.now(),
    
    id: 1,
    membershipID: 101,
    userID: 1001,
    memberType: MemberType.Nuevo,
    status: 'Activo',
    antique: '2 años',
  );

  gymSystem.register(emerson);

  // CASO 2: MIEMBRO NUEVO QUE ALGUNA VEZ FUE TRABAJADOR
  Member kenia = Member(
    cortesyTitle: 'Srta.',
    name: 'Kenia',
    firstLastname: 'Flores',
    secondLastname: 'Ozuna',
    gender: Gender.F,
    bloodgroup: BloodGroup.O_neg,
    photoURL: 'https://ej.com/photo_key.jpg',
    birthdate: DateTime(1995, 9, 14),
    isActive: true,
    createdAt: DateTime(2023, 5, 15),
    lastVisit: DateTime(2024,3,20),
    updatedAt: DateTime.now(),
    id: 2,
    membershipID: 102,
    userID: 1002,
    memberType: MemberType.Ocasional,
    status: 'Activo',
    antique: '1 años',
  );

  gymSystem.register(kenia);

  // CASO 3: CANCELAR LA MEMBRESIA DE UN MIEMBRO
  Member fernando = Member(
    cortesyTitle: 'Ing.',
    name: 'Fernando',
    firstLastname: 'Hernandez',
    secondLastname: 'Flores',
    gender: Gender.M,
    bloodgroup: BloodGroup.O_pos,
    photoURL: 'https://ej.com/photo_fer.jpg',
    birthdate: DateTime(2000, 1, 17),
    isActive: true,
    createdAt: DateTime(2020, 8, 1),
    updatedAt: DateTime(2023, 9, 20),
    lastVisit: DateTime(2023,12,20),
    id: 3,
    membershipID: 103,
    userID: 1003,
    memberType: MemberType.Frecuente,
    status: 'Inactivo',
    antique: '3 meses',
  );

  gymSystem.register(fernando);

  // MOSTRAR LA LISTA DE LOS MIEMBROS
  print('\n----------------------LISTADO------------------------');
  gymSystem.listMembers().forEach((member) => print(member));

  // MEMBRESIA CANCELADA
   fernando.cancelarSuscripcion();
  
   // ELIMINAR UN MIEMBRO DE LA LISTA 
  gymSystem.remove(kenia.id.toString(),kenia.name);
  
  print('----------------------------LISTADO DE MIEMBROS DESPUES DE ELIMINAR----------------------------');
  gymSystem.listMembers().forEach((member) => print(member));
}


// ----------------------------CLASES ABSATRACTAS-------------------------
enum Gender { M, F, NB }
enum BloodGroup { A_pos, A_neg, B_pos, B_neg, AB_pos, AB_neg, O_pos, O_neg }
enum MemberType { Frecuente, Ocasional, Nuevo, Esporadico, UnaSolaVisita }
abstract class Person {
  String cortesyTitle;
  String name;
  String firstLastname;
  String secondLastname;
  Gender gender;
  BloodGroup bloodgroup;
  String photoURL;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
 

  Person({
    required this.cortesyTitle,
    required this.name,
    required this.firstLastname,
    required this.secondLastname,
    required this.gender,
    required this.bloodgroup,
    required this.photoURL,
    required this.birthdate,
    required this.isActive,
    required this.createdAt,
   
  });
  
  @override
    String toString() {
 return """
 
    PERSONA
    
    Nombre Completo: $cortesyTitle $name $firstLastname $secondLastname
    Género: $gender
    Tipo de Sangre: $bloodgroup
    Fotografía: $photoURL
    Fecha de Nacimiento: $birthdate
    Estatus: ${isActive ? "Activo" : "Inactivo"}
    Fecha de Registro: $createdAt
    """;
    }

  }

class Member extends Person {
  int id;
  int membershipID;
  int userID;
  MemberType memberType;
  String status;
  String antique;
  DateTime lastVisit;
  DateTime updatedAt;
  Gender gender;
  BloodGroup bloodgroup;
  Member({
    required this.id,
    required this.membershipID,
    required this.userID,
    required String cortesyTitle,
    required String name,
    required String firstLastname,
    required String secondLastname,
    required this.gender,
    required this.bloodgroup,
    required String photoURL,
    required DateTime birthdate,
    required bool isActive,
    required DateTime createdAt,
    required this.memberType,
    required this.status,
    required this.antique,
    required this.lastVisit,
    required this.updatedAt
  }) : super(
            cortesyTitle: cortesyTitle,
            name: name,
            firstLastname: firstLastname,
            secondLastname: secondLastname,
            gender:gender,
            bloodgroup:bloodgroup,
            photoURL: photoURL,
            birthdate: birthdate,
            isActive: isActive,
            createdAt: createdAt);
  
  void cancelarSuscripcion() {
  status = 'Inactivo';
  print('\nLa suscripción del miembro ha sido cancelada.');
}

  @override
    String toString() {
      return ''' 
      ${super.toString()}
      MIEMBRO
      
      ID: $id
      Tipo de memebresia: $memberType
      Estatus: $status
      Antiguedad: $antique
      Fecha registrp: $updatedAt
      Fecha de última visita: $updatedAt
      ''';
    }

}

abstract class MemberRegistry {
  void register(Member member);
  void remove(String id, String name);
  List<Member> listMembers();
}

//  Clase que implementa la interfaz RegistroMiembro
class GymSystem implements MemberRegistry {
  List<Member> members = [];

  @override
  void register(Member member) {
    members.add(member);
    print("""-------------------------REGISTROS---------------------------
    ${member.name}""");
  }

  @override
  void remove(String id, String name) {
    // removeWhere: eliminar el primer miembro que cumpla con la condición
    members.removeWhere((m) => m.id.toString() == id);
    print('----------------------El miembro $name con el ID $id se ha eliminado.-------------------------');
  }

  @override
  List<Member> listMembers() {
    return members;
  }
}
