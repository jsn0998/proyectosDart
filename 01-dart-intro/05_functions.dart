/*
  https://dartpad.dev/
*/

void main(){

  print(greeetEveryone());
  print('Suma: ${ addTwoNumbers(10,20) }');

  print(greetPerson(name:'Joseph', message :'Hi,'));

}

// String greeetEveryone(){
//   return 'Hello everyone!';
// }

/* Funcion lambda o funcion de flecha
  Cuando se usa una funcion de flecha inmediatamente debe de seguir el valor a retornar, es decir no es posible usar las llaves despues del signo =>, tal como se muetsra acontinuacion
  String greetEveryone ()=>{  // modo incorrecto de usar la funcion de felcha en dart
    return 'Hello everyone';
  }
*/

String greeetEveryone ()=> 'Hello everyone';// modo correcto de usar la funcion de felcha en dart


/*
  Formas de definir una funcion.
  Existen 2 formas de definir una funcion y son:
  1) Modo con llaves
  int addTwoNumbers(int a, int b){
    return a + b;
  }
*/
//2) Modo funcion lambda, no se usa el return
int addTwoNumbers(int a, int b)=>a+b;



/* 
  Tipado estricto de argumentos en una funcion y argumentos opcionales en una funcion. 
  Ejemplo:
  El signo ? establece que el argumento b puede ser null, es decir que su tipado es variable 
  Los corchetes [] establecen que el argumento b es opcional
  
*/
int addTwoNumbersOptional(int a, [int? b]){

  // b = b ?? 0;// la variable b si es null o undefined entonces se le agignara el valor de cero 0
  b ??= 0;// la variable b si es null o undefined entonces se le agignara el valor de cero 0
  return a + b;
}


/*
  Definir argumentos opcionales en una funcion y establecer su posicion mediante su nombre, al llamar a la funcion 
  Ejemplo: En la funcion greetPerson las llaves que encierran a los argumentos name y message establecen que 
  estos seran opcionales (como son opcionales estas variables pueden ser null) y 
  pueden establecerse en desorden al llamar a la funcion greetPerson mediante sus nombres, asi: greetPerson(message : 'Hi,', name:'Joseph');
*/
/*
  La palabra reservada required en el argumento name obliga a que cuando se utilice la funcion 
  greetPerson se tenga que enviar el parametro name
*/
/*
  En Ffluter se utiliza mucho el argumento posicional por nombre
*/
String greetPerson({required String name, String message = 'Hola,'}){
  return '$message Joseph';
}