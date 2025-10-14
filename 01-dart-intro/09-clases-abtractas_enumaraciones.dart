/*
  https://dartpad.dev/
  Clase abstracta: Las clases abstractas se utilizan 
  para detectar diferentes patrones de arquitectura
  en la aplicacion 
  Una clase abstracta no puede ser inicializada
*/

void main(){

  /*
    Ejemplo 1: Porque se utiliza una clase absstracta en este ejemplo??
    La clase abstracta se creo porque se desea crear metodos, 
    funciones o cualquier otro tipo de estructura en un tipo de planta de energia que se desconoce, 
    las cuales en este ejemplo pueden ser nuclear, wind o water 
    Ademas se puede adicionar otros tipos de energia como: solar, ionic
  */
  final windPlant = WindPlant(initialEnergy:100);
  final nuclearPlant = NuclearPlant(energyLeft:1000);

  print(windPlant);
  print(nuclearPlant);
  print('wind ${chargePhone(windPlant)}');
  print('nuclear ${chargePhone(nuclearPlant)}');
}

/*
  Ejemplo 1
*/
double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType {nuclear, wind, water}
abstract class EnergyPlant{
  double energyLeft;
  final PlantType type;// se adiciona la propiedad final 
  // porque una vez se defina el tipo de planta que es jamas va a cambiar

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);

}

/* 
  extend o implement
  WindPlant heredara las propiedades de su clase padre (EnergyPlant), 
  el metodo constructor de su clase padre (EnergyPlant) y
  los metodos de su clase padre (EnergyPlant)

  super()
  Este metodo llama al constructor de la clase padre 
  y asigna el valor de sus parametros

*/

class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy})
    :super(energyLeft:initialEnergy, type:PlantType.wind);

  @override
  void consumeEnergy(double amount){// se sobresstcribe este metodo de la clase padre EnergyPlant
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;// se sobresstcribe esta propiedad de la clase padre EnergyPlant

  @override
  final PlantType type = PlantType.nuclear;// se sobresstcribe esta propiedad de la clase padre EnergyPlant

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount){// se sobresstcribe este metodo de la clase padre EnergyPlant
    energyLeft -= ( amount * 0.5);
  }

}