void main() {
 //FUNCIONES 
  //1. Llamado de una funciòn básica 
  
  greetEveryone();
  //2. Llamado de una función que retorna un valor 
  // 2.1 Si no deseamos almacenar el valor, se invoca normalmente 
  print("Hoy es el día número ${getDayNumber()}");
  // 2.2 Necesitamos almacenar el valor retornado para utilizar su valor en otras operaciones del programa 
  final numeroDia = getDayNumber();
  print("En tres días estaremos a: ${(numeroDia+3)}");

  // 3. Llamado de una función con parámetros
  print(greetSomeone("Luz A"));
  // 3.1 que pasa si ...
  print(greetSomeone(45));
  print(greetSomeone(-15));
  print(greetSomeone(3.141516));
  print(greetSomeone(true));
 // 3.1 pruebas
 /* print(greetSomeone(45));
  print(greetSomeone(-15));
  print(greetSomeone(3.141516));
  print(greetSomeoneTyped(true));*/
 print(greetSomeoneTyped("Suri"));
  
  //4. Llamdo de funciones con varios parametros posicionales 
  // para este caso los parámetros deben ser enviados en la posición exacta y según DART ambos por defecto son obligatorios 
  print (greetSomeoneHourOfDay("Luz A",21));
  // que pasa si solo envío un parámetro
/*  print (greetSomeoneHourOfDay(null, null));
  print (greetSomeoneHourOfDay("Luz A"));
  print (greetSomeoneHourOfDay(10));
*/
  // Analizando la función determinamos que la hora del día puede ser nulo, y se puede definir con la hora actual del 
  print (greetSomeoneHourOfDay("Chiki", null));
  print (greetSomeoneHourOfDay("Maria"));
  
  // 5. FUNCIONES LAMBDA, ANONIMAS, ARROW FUNCTION 
  // lAS FUNCIONES LAMBDA
  var calculaTotalCarrito =(double productQuantity, double productprice, double percentageDiscount) =>
    (productQuantity*productprice)* ((100-percentageDiscount)/100);
  double cantidad = 3.180;
  double precio = 1725.10;
  double descuento = 8;
  
  print ("""
        Costo del producto: ${precio}
        Cantidad: ${cantidad}
        Descuento: ${descuento}
        ------------------------------------------
        Costo del carrito de compras: ${calculaTotalCarrito(cantidad,precio,descuento)}
        """);
  
  // 6. Llamado de una función con parametros nombrados
  print(infoCarListStatus(buyerName:"Adalid"));
  
  // 6.1 LLamado de una función con los parametros en desorden posicional 
  print(infoCarListStatus(status:"En espera de pago",
                          amountCarList: 2516.28,
                          buyerNmae:"Luz"));
}
// 1. Funciones sin parámetros y sin retorno de valor 
greetEveryone() // <--- dyamic
{
  print ("Hola a todes desde DART");
  
}

// 2. Funciones que retornan valores 
int getDayNumber() // <--- retorna un entero 
{
  DateTime now = DateTime.now();
  return now.day;
}

//3. Funciones 
String greetSomeone(personName)
{
  return "Hola, ${personName}";
}

// 3.1 Función que recibe parametros tipificados
String greetSomeoneTyped(String personName)
{
  return "Hola, ${personName}";
}

//4. Funciones que reciben mas de un parametro 
// int? - Puede ser vacio
// [] - puede ser opcional 
String greetSomeoneHourOfDay(String personName, [int? hourDay])
{
  String greeting;
  // el operador ??= 
  hourDay ??= DateTime.now().hour;
  print ("Hora: ${hourDay}");
  
  if(hourDay>= 6 && hourDay<12)
  {
    greeting= "Buenos días";
  }
  else if(hourDay>=12 && hourDay< 18)
  {
    greeting ="Guenas tardes";
  }
  else
  {
    greeting="Buenas noches";
  }
  
 return "${greeting}, ${personName}";
}

// 6. Funciones con parametros nombrados
String infoCarListStatus({required String buyerName, double amountCarList=0.0, String status="Selección de productos"})
{
  return "El carrito de compras de: ${buyerName}, tiene un total de: \$${amountCarList} y actualmente esta en estatus: ${status}";
}
