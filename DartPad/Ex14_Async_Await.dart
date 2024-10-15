void main() async { // se usa asyn que siginifica usar operaciones asíncronas
// que permiten que el programa siga ejecutándose sin esperar a que otras tareas finalicen
 
  print('Inicio del programa'); 
  
  try {
    
    final value = await httpGet('https://fernando-herrera.com/cursos'); // se usa await para esperar el resultado de la operacion httpGet
    print( value );
    
  } catch (err) {
    print('Tenemos un error: $err');// el erroe se encuentra en el catch y muestra el error si existen problemas en la petición
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async { // Función httpget usando la palabra async que indica que se va a devolver un objeto future
  
  await Future.delayed( const Duration(seconds: 1)); // simula restraso de un segundo
  
  throw 'Error en la petición'; // devuelve el error después del tiempo de espera
  
//   return 'Tenemos un valor de la petición';
  
}