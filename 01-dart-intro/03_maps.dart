/*
  https://dartpad.dev/

  Mapa: Es practicamente un objeto
*/

void main(){
  final pokemon = {
    'name':'Ditto',
    'hp':100,
    'isAlive':true,
    'abilities':<String>['impostor'],
    'sprites':{
      1:'ditto/front.png',
      2:'ditto/back.png',
    }
  };

  print(pokemon);
  print('Name: ${ pokemon['name'] }');// Acceder al valor de la clave name
  print('Name: ${pokemon['sprites']} ');

  print('Back: ${ pokemon['name'][2] }');// Acceder al valor de la clave name
  print('Front: ${pokemon['sprites'][1] } ');
}