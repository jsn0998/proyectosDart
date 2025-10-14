
/*
  https://dartpad.dev/
  Tipos de colleciones: 
  1) List: Listado que permiten elementos duplicados, al usar print los elementos se muestran entre corchetes
  2) Set: Tecnicamente es un listado solo que sus valores no son key value pers y no permiten elementos duplicados, al usar print los elementos se muestran entre llaves
  3) Iterable: 
  Es una coleccion de elementos que se puede leer de manera secuencial, es decir que se pueden iterar. 
  Es un objeto que puede contar los elementos que se encuentren dentro de el como listas, sets, arreglos. 
  Es un elemento que sabe cuantos elementos tiene, estan ordenados y pueden ser utilizados para barrer la informacion.
  Al usar print los elementos se muestran entre parenetesis
*/

void main(){
  final numbers = [1,2,3,4,5,5,5,6,7.8,9, 9, 10];// Tipo de dato List porque esta entre llaves

  print('List original ${numbers}');
  // print('List original ${numbers.toSet().toList()}');// De esta forma se elimina elementos duplicados de la lista
  print('Lenght ${numbers.length}');// Muestra la cantidad de elementos de la lista
  print('Index 0: ${numbers[0]}');// Muestra el primer elemento de elementos de la lista

  print('Firt ${numbers.first}');// muestra el primer elemento de la lista
  print('Last: ${numbers.last}');// muestra el ultimo elemento de la lista
  print('Reversed: ${numbers.reversed}');// Invierte el orden de los elementos y muestra los elementos entre parentesis (es un Iterable)

  /*
    Despues de usar la funcion reversed la variable numbers se convierte a tipo de dato Iterable
  */
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');// los elementos se muestran entre parentesis

  // Convertir el objeto Iterbale a List
  print('List: ${ reversedNumbers.toList() }');// los elementos se muestran entre llaves

  // Convertir el objeto Iterable a Set
  print('List: ${ reversedNumbers.toSet() }');// los elementos se muestran entre llaves

  /* 
    Metodo where pertenceiente a una variable de tipo List. Dentro de un where se evaluan cada elemento que este dentro de ese listado y se excluiran los elementos cuya condicion retorne false
    Filtrar de lista denominada numbers para que retorne solo los elementos que sean mayores a 5
  */
  final numbersGreaterThan5 = numbers.where((int num){
    return num > 5
  });// se filtra los elementos de la lista cuya condicion sea falsa
  print('>5 Set: $numbersGreaterThan5');
  print('>5 Iterable: ${numbersGreaterThan5.toSet() }');

}