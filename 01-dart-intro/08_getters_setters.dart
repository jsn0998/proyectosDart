/*
  https://dartpad.dev/
*/
void main(){
  final mySquare = Square(side:10);
  // mySquare.side = 5;
  // print('area ${mySquare.calculateArea() }');
  print('area ${ mySquare.area }');
}

class Square{
  double _side;// si una propiedad comienza con el signo _ significa que es una propiedad privada 

  /*
    Exepcion basado en la asercion
    Ejemplo 1: Si no se cumple esta condicion ,side >= 0 ,no se asigna dicho 
    valor a la propiedad side cuando se inicialice la clase Square
  */
  Square({ required double side})
    :assert(side >= 0,'side must be >= 0'),
    _side = side;

  double calculateArea(){
    return _side * _side;
  }

  double get area{
    return _side * _side;
  }

  set side(double value){
    print('setting new value $value');

    if(value<0) throw 'Value must be >0';

    _side = value;
  }
}
