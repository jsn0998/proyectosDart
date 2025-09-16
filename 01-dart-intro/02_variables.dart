/*
  Tipos de datos mas comunes en Dart
*/

void main(){
  final String pokemon = 'Ditto';// Valor string que no va a cambiar una vez es asignado
  final int hp=100;// Valor entero que no va a cambiar una vez es asignado
  final bool isAlive = true;
  // bool? isAlive;// en este caso la variable boolena puede tener los sgts 3 posibles valores: true, false o null
  final List<String> abilities = ['impostor'];// Lista o arreglo de string 
  final sprites = <String>['ditto/front.png','ditto/back.png'];// Lista o arreglo de string

  // dynamic = null;
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6} // set de datos aunque tambien puede ser objeto
  errorMessage ()=>true;
  errorMessage = null;

  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites

  """);

}

/*

Tipo de dato dynamic puede ser cualquier tipo de dato
dynamic por defecto es nulo


*/