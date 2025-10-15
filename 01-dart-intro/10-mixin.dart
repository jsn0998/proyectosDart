/*
  https://dartpad.dev/
  Puntos importantes:Curso Flutter de cero a experto, video 27
  1) Un mixin permite adicionar un metodo especifico a una clase, 
  en caso de que no sea posible acceder 
  a este mediante un extend o implement.
  2) Un mixin evita extender de otra clase otras funciones o propiedades innecesarias, 
  en vez de eso solo se usa un metodo especifico
  3) La palabra with asocia la clase con un mixin, 
  al hacer esto la clase va a tener una funcionalidad extra.
*/

abstract class Animal{

}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

// Anterior manera de delcar un mixin
  // abstract class Volador{
  //   void volar()=>print('Estoy volando!');
  // }

  // abstract class Caminante{
  //   void caminar()=>print('estoy caminando!');
  // }

  // abstract class Nadador{
  //   void nadar()=>print('Estoy nadando!');
  // }
// Anterior manera de delcar un mixin

// Actual manera de delcar un mixin
mixin Volador{
  void volar()=>print('Estoy volando!');
}

mixin Caminante{
  void caminar()=>print('estoy caminando!');
}

mixin Nadador{
  void nadar()=>print('Estoy nadando!');
}


/*
  Las clases anteriores como son abstractas no sirven para crear instancias
*/


class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main(){
  /*
    Se inicializan los animales para despues 
    mostrar las acciones que sean posibles que hagan
  */
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.volar();
  namor.caminar();
  namor.nadar();
}




