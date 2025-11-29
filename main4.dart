/*
Разработайте систему для управления парком автомобилей:

Создайте абстрактный класс Vehicle с методами:
	drive() — начало движения.
	stop() — остановка.

Создайте классы:
	Car (Автомобиль) — реализует метод движения для автомобиля.
	Bicycle (Велосипед) — реализует метод движения для велосипеда.

Добавьте в класс Car и Bicycle следующие свойства:
	speed (скорость), color (цвет) — публичные.
	engineStatus (статус двигателя) — приватный для Car, публичный для Bicycle.


Реализуйте методы для управления автомобилями и велосипедами. Добавьте проверку на превышение допустимой скорости.
*/

abstract class Vehicle{
  void drive();
  void stop();
}

class Car extends Vehicle{
  double speed = 0;
  String color;
  bool _engineStatus = false;
 
  Car(this.color){
    print('Создан автомобиль');
  }

  @override
  void drive(){
    if (_engineStatus){
      print('Автомобиль уже находится в движение');
      return;    
    }

    if (speed <= 0){
      print('Начало движения невозможно. Задана некорректная скорость');
      return;    
    }

    if (speed > 60){
      print('Начало движения невозможно. Превышение скорости');
      return;    
    }
    
    _engineStatus = true;
    print('Движение автомобиля начато');

  }

  @override
  void stop(){
      if (!_engineStatus){
      print('Автомобиль и так остановлен');
      return;    
    }

    _engineStatus = false;
    print('Движение автомобиля прекращено');  
  }
}

class Bicycle extends Vehicle{
  double speed = 0;
  String color;
  bool engineStatus = false;
 
  Bicycle(this.color){
    print('Создан велосипед');
  }

  @override
  void drive(){
    if (engineStatus){
      print('Велосипед уже находится в движение');
      return;    
    }

    if (speed <= 0){
      print('Начало движения невозможно. Задана некорректная скорость');
      return;    
    }

    if (speed > 30){
      print('Начало движения невозможно. Превышение скорости');
      return;    
    }
    
    engineStatus = true;
    print('Движение велосипеда начато');

  }

  @override
  void stop(){
      if (!engineStatus){
      print('Велосипед и так остановлен');
      return;    
    }

    engineStatus = false;
    print('Движение велосипеда прекращено');  
  }
}

void main() {

  Car car = Car('black');
  car.speed = 20;
  car.drive();
  car.drive();
  car.drive();
  car.stop();
  car.stop();
  car.speed = 100;
  car.drive();

  Bicycle bicycle = Bicycle('white');
  bicycle.speed = 0;
  bicycle.drive();
  bicycle.speed = 20;  
  bicycle.drive();
  bicycle.drive();
  car.stop();
  bicycle.stop();
  bicycle.speed = 40;
  bicycle.drive();

}