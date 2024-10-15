void main() {
  
  emitNumbers().listen( (value) { // se invoca a la función que contiene el stream de numeros enteros
     print('Stream value: $value'); // imprime los valores 
  });
  
  
} 


Stream<int> emitNumbers() { // se usa stream para devolver una secuencia de enteros 
  
  return Stream.periodic( const Duration(seconds: 1), (value){ // crea intervalos de 1 segundo que es lo que tardaran en mostrase los valores y value funciona como contador 
    
//     print('desde periodic $value');
    return value;
  }).take(5); // limita el número de valores que van apareciendo
  
}