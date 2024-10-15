void main() {
  
  emitNumber()
     .listen( (int value) { // se llama a la función emitNumber
        
       print( 'Stream value: $value' ); // se ejecuta cada que el stream emite un valor nuevo
       
     }); 
}


Stream<int> emitNumber() async* { // async se usa para que los valores se muestren uno por uno
  
  final valuesToEmit = [1,2,3,4,5]; // se declaran los valores que se quieren emitir
  
  for( int i in valuesToEmit ) { // se realiza un bucle 
    await Future.delayed( const Duration(seconds: 1)); // se espera un segundo antes de emitir el siguiente valor
    yield i; // cada valor i se emite uno a la vez
  }
  
  
}