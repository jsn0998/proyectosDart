void main(){
  /*
    https://dartpad.dev/
    Los streams pueden ser retornados y usados como
    objetos, funciones o métodos, son un flujo de
    información que puede estar emitiendo valores
    periódicamente, una única vez, o nunca.

    Un Stream podría verse como una manguera
    conectada a un tubo de agua, cuando abres el tubo el
    agua fluye, cada gota de agua sería una emisión del
    Stream, la manguera puede nunca cerrarse, cerrarse o
    nunca abrirse.

    Los stream es un flujo de datos que puede emitir multiples valores, un unico valor o ningun valor a traves del tiempo
  */

  /*
    El metodo listen esta a la escucha de los valores emitidos por 'emitNumbers'
  */
  emitNumbers().listen((value){
    print('Stream value: $value');
  });
}

/*
  La funcion emitNumbers retorna un tipo de dato Stream
  En la funcion de tipo Stream denominada emitNumbers
  se debe de especificar que es lo que fluira en el stream
  , en este ejemplo fluiran valores de tipo entero (int)
*/
Stream<int> emitNumbers(){
  /*
    Metodo periodic del stream
    Parametro 1: Intervalo de tiempo en que los valores del stream seran emitidos, 
    en este caso despues de cada segundo se emitira el sgte valor del stream
    Parametro 2: Funcion de retorno
  */
  return Stream.periodic(const Duration(seconds:1), (value){
    // print('desde periodico $value');
    return value;
  }).take(5);
  // El metodo take toma solo los 5 primeros valores emitidos por el stream y detiene la secuencia de emision

}