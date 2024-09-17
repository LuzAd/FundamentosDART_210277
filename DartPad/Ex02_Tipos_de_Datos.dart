void main() {
  
  // Practica 04: Tipos de datos en dart
  final String pokemon = "Pikachu";
  
  // Enteros (Int)
  final int hp = 100;
  
  // Boleano (Boolean)
  final bool isAlive = true;
  
  // Listas (List)
  final abilities = ['Impact-Trueno', 'Cola de hierro', 'Ataque rápido'];
  final sprites = <String>['Pikachu_front.pg', 'Pikachu_back.png'];
  
  
  print(""" El pokemon que elegiste es $pokemon
  ------------------------------------------------------------------
  Las estadisticas de $pokemon son:
  Estatus de vida: $hp
  Habilidades: $abilities
  Imagenes: $sprites
  """);
}
