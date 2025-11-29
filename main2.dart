/*
Задание 2

2.1 Наследование и полиморфизм

Создайте базовый класс Shape (Фигура) с двумя методами:
	area() — возвращает площадь фигуры.
	perimeter() — возвращает периметр фигуры.

Создайте три класса-наследника:
	Circle (Круг) — класс для круга, наследующий от Shape. Внутри класса реализуйте методы area() и perimeter(), основываясь на радиусе круга.
	Rectangle (Прямоугольник) — класс для прямоугольника, наследующий от Shape. Реализуйте методы, основываясь на длине и ширине.
	Triangle (Треугольник) — класс для треугольника, наследующий от Shape. Реализуйте методы на основе длины сторон треугольника.

Создайте список фигур и напишите код, который выводит площади и периметры всех фигур в списке, используя полиморфизм.

Требования:
Используйте наследование для классов фигур.
Реализуйте полиморфизм: вызов методов area() и perimeter() через переменные типа Shape.
*/

import 'dart:math';

abstract class Shape{
  void area();

  void perimeter();    
}

class Circle extends Shape{
  double radius;

  Circle(this.radius);

  @override
  void area(){
    print('Площадь круга: ${pi*radius*radius}');
  }

  @override
  void perimeter(){
    print('Периметр круга: ${2*pi*radius}');
  }   
}

class Rectangle extends Shape{
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  void area(){
    print('Площадь прямоугольника: ${length*width}');
  }

  @override
  void perimeter(){
    print('Периметр прямоугольника: ${2*(length+width)}');
  }  

}

class Triangle extends Shape{
  double a;
  double b;
  double c;

  Triangle(this.a, this.b, this.c);

  @override
  void area(){
    double p = (a + b + c) / 2;
    double area = sqrt(p * (p - a) * (p - b) * (p - c));
    print('Площадь треугольника: $area');
  }

  @override
  void perimeter(){
    print('Периметр треугольника: ${a+b+c}');
  }  

}


void main() {
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(2, 3);
  Triangle triangle = Triangle(2, 3, 4);

  List<Shape> shapes = [circle, rectangle, triangle];

  for(var shape in shapes){
    shape.area();
    shape.perimeter();
  }  
}