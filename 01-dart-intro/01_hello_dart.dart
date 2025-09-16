/*
  Todo programa en Dart pasa por una funcion denominada main
  En dart toda funcion o variable debe de tener un tipo de dato
  Tipo de dato dynamic: Tipo de dato para funcion que especifica que peude regresar cualquier cosa
  Tipo de dato final: Valor que no va a cambiar una vez es asignado

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