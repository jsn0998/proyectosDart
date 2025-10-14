/*
  https://dartpad.dev/
  Todo programa en Dart pasa por una funcion denominada main
  En dart toda funcion o variable debe de tener un tipo de dato, se adiciona la palabra void a la funcion main para especificar que retorna nada

  Propiedades de los tipos de datos en Dart
  Estas propiedades se tipean antes de establecer el nombre de la variable.
  1) dynamic: Tipo de dato puede almacenar cualquier tipo de dato basico ya sea String, int, bool, List, entre otros
  2) final: Valor que no va a cambiar una vez es asignado
  3) late: Usado para realizar asiganacion tardia a una variable, se usan mas para obtener datos de endpoints

*/

void main(){
  // var myName = 'Joseph';
  // late final myName; // usado para realizar asiganacion tardia a una variable, se usan mas para obtener datos de endpoints
  // String myName = 'Joseph';

  const myName = 'Joseph';

  print('Hola $myName');
  print('Hola ${ myName.toUppercase() } ');
  print('Hola ${ 1+1 }');

}