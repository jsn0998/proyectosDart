
/*
  Estructura de colecciones
  Tipos de datos: 
  1) List: Listado que permiten elementos duplicados, al usar print los elementos se muestran entre corchetes
  2) Set: Listado que no permiten elementos duplicados, al usar print los elementos se muestran entre llaves
  3) Iterable: Listado comun, al usar print los elementos se muestran entre parenetesis
*/

void main(){
  final numbers = [1,2,3,4,5,5,5,6,7.8,9, 9, 10];// Tipo de dato List porque esta entre llaves

  print('List original ${numbers}');
  // print('List original ${numbers.toSet().toList()}');// De esta forma se elimina elementos duplicados de la lista
  print('Lenght ${numbers.length}');
  print('Index 0: ${numbers[0]}');

  print('Firt ${numbers.first}');// muestra el primer elemento de la lista
  print('Last: ${numbers.last}');// muestra el ultimo elemento de la lista
  print('Reversed: ${numbers.reversed}');// Invierte el orden de los elementos

  /*
    Despues de usar la funcion reversed la variable numbers se convierte a tipo de dato Iterable
  */
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');// los elementos se muestran entre parentesis

  // Convertir el objeto Iterbale a List
  print('List: ${ reversedNumbers.toList() }');// los elementos se muestran entre llaves

  // Convertir el objeto Iterable a Set
  print('List: ${ reversedNumbers.toSet() }');// los elementos se muestran entre llaves

  // Filtrar de lista numbers los elementos que sean mayores a 5
  final numbersGreaterThan5 = numbers.where((int num){
    return num > 5
  });// se filtra los elementos de la lista cuya condicion sea falsa
  print('>5: $numbersGreaterThan5');
  print('>5: ${numbersGreaterThan5.toSet() }');

}