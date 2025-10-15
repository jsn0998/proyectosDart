/*
  https://dartpad.dev/
  El async* simboliza que la funcion va a retornar un stream

  Los streams pueden ser retornados y usados como
  objetos, funciones o métodos, son un flujo de
  información que puede estar emitiendo valores
  periódicamente, una única vez, o nunca.
*/


void main(){

  /*
    El metodo listen esta a la escucha de los valores emitidos por 'emitNumber'
  */
  emitNumber().listen((value){
    print('Stream value $value');
  });
}

Stream emitNumber() async*{
  final valuesToEmit = [1,2,3,4,5];// elementos del arreglo que emitira la funcion emitNumber

  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));// espera 1 segundo y despues ejecuta el codigo de abajo
    yield i;// el yield funcion como el return en la emision de valores de streams
  }
}