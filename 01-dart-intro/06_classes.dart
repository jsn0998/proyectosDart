/*
  https://dartpad.dev/
*/
void main(){
  // final Hero wolverine = Hero('Logan','Regeneracion');// Inicializacion de clase Hero con ejemplo 1 y ejemplo 2

  final Hero wolverine = Hero(name:'Logan',power:'Regeneracion');// Inicializacion de clase Hero con ejemplo 3

  print(wolverine);// Automaticamente invoca al metodo toString de cualquier clase
  print(wolverine.name);
  print(wolverine.power);

}

/*
  El 95% de FFLUTTER son puras clases
  Una clase es la representacion fisica o digital de un objeto
  Ejemplo 1: Clase Auto, Clases hijas: Toyota, Vhebrolet, Mazda
  Ejemplo 2: Clase Person, Clases hijas: Hero, Villano

  El metodo constructor tendra el mismo nombre de la clase

  Operador this:
  La palabra reservada this dentro de las clases es opcional
*/

class Hero{
  String name;
  String power;

  /*
    Ejemlo 1 : Inicializar variables en el metodo contructor de la clase Hero
  */
  // Hero(String pName, String pPower): name=pName, power=pPower;

  /*
    Ejemlo 2 : Inicializar variables en el metodo contructor de la clase Hero
  */
  // Hero(this.name, this.power);

  /*
    Ejemlo 3 : Inicializar variables en el metodo contructor de la clase Hero, 
    establecer su posicionamiento mediante su nombre
    Hacer obligatorio sus argumentos mediante la palabra reservada required
  */
  Hero({ required this.name, required this.power});

  /*
    El operador @override sobreescribe un metodo en una clase
  */
  @override
  String toString(){
    return '$name - $power';
  }

}
