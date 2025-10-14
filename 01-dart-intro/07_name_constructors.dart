/*
  Formas de declarar instancias con diferente cantidad de argumentos
*/

void main(){

  final Map<String, dynamic>rawJson = {
    'isAlive':true,
    'name':'Tony',
    'power':'MONEY',
  };

  final ironman = Hero.fromJson(rawJson);// Ejemplo 2: Uso de metodo contructor renombrado

  // final ironman = Hero(
  //   isAlive:rawJson['isAlive'] ?? false,
  //   name:'Tony',
  //   power:'MONEY'
  // );
  // final ironman = Hero(isAlive:true, name:'Tony', power:'MONEY');

  print(ironman);// se invoca por defecto el metodo toString
}

class Hero{
  String name;
  String power;
  bool isAlive;

  /*
    Ejemplo 1: Asignacion de propiedades a traves del metodo contructor por defecto 
  */
  Hero({required this.name, required this.power, required this.isAlive});

  /*
    Ejemplo 2: Asignacion de propiedades a traves del metodo contructor renombrado 
    Recibe como argumento una variable tipo objeto o Map
  */
  Hero.fromJson(Map<String, dynamic> json):
    name=json['name'] ?? 'No name found',
    power=json['power'] ?? 'No power found',
    isAlive=json['isAlive'] ?? 'No isAlive found';


  /*
    El operador @override sobreescribe un metodo en una clase, 
    el metodo toString existe por defecto en cualquier clase de Dart
  */
  @override
  String toString(){
    return '$name, $power, isAlive:${ isAlive ? 'YES':'NO' }';
  }

}