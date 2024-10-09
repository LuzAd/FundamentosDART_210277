void main(){
  print("Inicio de Programa");

      httpGet('https://fernando-herrara.com/cursos').then(
        (value){
          print(value);
        }).catchError((err) {
        print('Error: $err');
        });

  print('Fin del Programa');
}

Future <String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1), (){
    throw 'Error en la peticion http';

    
  });
}