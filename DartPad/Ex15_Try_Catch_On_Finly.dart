void main() async {
  
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    print('Tenemos una Exception: $err');// se imprime el mensaje de acuerdo interrumpiendo el flujo para resolver el error
  } catch (err) {
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    print('Fin del try y catch');
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async { // se sigue simulando la petición httpGet que espera para devolver el future
  
  await Future.delayed( const Duration(seconds: 1)); 
  
 // throw Exception('No hay parámetros en el URL');// el error o actividad anormal ahora se maneja como una excepcion, throw es el que se encarga de mostrarlo
 // interrumpiendo el flujo
  
 //throw 'Error en la petición';
  
   return 'Tenemos un valor de la petición';
  
}