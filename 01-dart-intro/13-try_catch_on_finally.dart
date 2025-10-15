/* 
  https://dartpad.dev/
  Future
  Un Future representa principalmente el resultado de
  una operación asíncrona. Es una promesa de que
  pronto se tendra un valor. La promesa puede fallar y hay
  que manejar la excepción. Los futures son un acuerdo
  de que en el futuro tendrás un valor para ser usado. 
*/

/*  
  Al usar await se debe de convertir la funcion 'void main()' 
  a una funcion asincrona
  Tecnicamente la funcion void seria de tipo Future<void> 
  y su declaracion seria esta: Future<void> main() async, 
  pero al ser void retornara nada asi que no sera necesaria 
  declararla de esa manera cuando se use con la palabra reservada async
*/
void main() async{

  // Uso de Future Ejemplo 1
  // httpGet('http:fernando-herrera.com/cursos')
  //   .then(
  //     (value){// si todo sale bien se obtiene el valor aqui
  //       print(value);
  //     }
  //   )
  //   .catchError(
  //     (error){
  //       print('Error: $error');
  //     }
  //   )
  // ;

  /*
    Uso de Future Ejemplo 2. Con palabra reservada async - await y 
    try catch para manjeo de errores
    La palabra reservada async se usa para determinar que se va a retornar un 
    tipo de dato Future (una Promise), 
    La palabra reservada await solo se usaran dentro de funciones asincronas
    cuando se utiliza async en un metodo se obliga a la funcion 
    que retorne un tipo de dato Future, 
    una funcion asincrona siempre va a regresar un Future
  */
  try{
    final value = await httpGet('http:fernando-herrera.com/cursos');
    print('Exito: $value');
  }on Exception catch(err){
    /*
      La palabra reservada 'on' permite reaccionar basado en el tipo de excepcion que se reciba
      En este ejemplo se ingresara a este on cuando se reciba en la funcion httpGet
      el tipo de error Exception
    */
    print('Tenemos una excepcion: $err');
  }catch(err){
    print('OPPS algo terrible paso: $err');
  }finally{
  /*
    La palabra reservada 'finally' indica que no importa si se hace o no lo anterior 
    siempre se ejecutara lo que este dentro de las llaves del finally
  */
    print('Fin del try y catch');
  }

  print('Fin del programa');

}

Future<String> httpGet(String url) async {
  // Uso de Future Ejemplo 1
    // Despues de un segundo se obtendra un dato de tipo Future<String>
    // return Future.delayed(const Duration(seconds: 1), (){ 
    //   throw 'Error en la peticion http';// lanza un error o excepcion controlada
    //   // return 'Respuesta en la peticion http';
    // });
  // Uso de Future Ejemplo 1

  // Uso de Future Ejemplo 2
    await Future.delayed(const Duration(seconds: 1) );// esperar un segundo y despues ejecutar la logica de acontinuacion


    throw Exception('No hay parametros en URL');// error de tipo Exception
    // throw 'Error en la peticion';// Error que se recibira en el try - catch
    // return 'Tenemos un valor de la peticion';
  // Uso de Future Ejemplo 2

}