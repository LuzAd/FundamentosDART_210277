void main() {
  
  // declarar variable generica para almacenar mi nombre
  var myName = 'Luz';
  String myLastName = 'Reyes';
  final int myDNI = 210277;
  late final int myAge;
  
  // Corregir mi nombre
  myName = 'Luz Adriana';
  // myDNI= 220277;  -- esto ocasionó un error por que la variable esta definioda como final y no se puede actualizar
  
  print ('hola $myName $myLastName, tu matricula es: $myDNI y tu edad aún no la conozco por que no se cuando naciste');
}

//Interpolando el valor de las variables con métodos de manipulación o transformación

print ('\nhola, ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es $myDNI y tu edad ún no la conozco por que no sé cuando naciste');
