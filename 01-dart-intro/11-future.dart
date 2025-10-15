/* 
  https://dartpad.dev/
  Future
  Un Future representa principalmente el resultado de
  una operación asíncrona. Es una promesa de que
  pronto tendrás un valor. La promesa puede fallar y hay
  que manejar la excepción. Los futures son un acuerdo
  de que en el futuro tendrás un valor para ser usado. 
*/

void main(){

  httpGet('http:fernando-herrera.com/cursos')
    .then(
      (value){// si todo sale bien se obtiene el valor aqui
        print(value);
      }
    )
    .catchError(
      (error){
        print('Error: $error');
      }
    )
  ;

  print('Fin del programa');

}


Future<String> httpGet(String url){

  // Despues de un segundo se obtendra un dato de tipo Future<String>
  return Future.delayed(const Duration(seconds: 1), (){ 
    // throw 'Error en la peticion http';// lanza un error
    return 'Respuesta en la peticion http';
  });
}