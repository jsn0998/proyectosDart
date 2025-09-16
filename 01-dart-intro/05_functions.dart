void main(){

  print(greeetEveryone());
  print('Suma: ${ addTwoNumbers(10,20) }');

}

// String greeetEveryone(){
//   return 'Hello everyone!';
// }

// Funcion lambda
String greeetEveryone ()=> 'Hello everyone';


// int addTwoNumbers(int a, int b){
//   return a + b;
// }

// Funcion lambda
int addTwoNumbers(int a, int b)=>return a+b;

// Argumentos opcionales en una funcion, el argumento b es un entero opcional
int addTwoNumbersOptional(int a, [int? b]){
  return a + b;
}