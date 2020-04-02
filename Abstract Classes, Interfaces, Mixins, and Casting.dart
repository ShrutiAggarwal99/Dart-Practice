import 'dart:math';

void main() {
  
  Circle circle = Circle(20);
  Rectangle rectangle = Rectangle(10,20);
  Square square = Square(30);
  
  print(circle.name); 
  print(rectangle.name);
  print(square.name);
//   remember name is a getter for the classes and can be used just like a variable member 
  
  Shape randShape; //Shape cannot be instantiated, but a variable of Shape type can hold any of the 3 classes objects
  
  Random random = Random();
  int choice = random.nextInt(3);
  
  switch(choice){
    case 0:
      randShape = Circle(10.5);
      break;
    case 1:
      randShape = Rectangle(10.5,20);
      break;
    case 2:
      randShape = Square(10.5);
      break;
    default:
      print("no valid shape chosen");
  }
  
  print(randShape.name);
  print(randShape.perimeter);
  print(randShape.area);
  
}

// abstract classes cannot be instantiated - they are primarily to be inherited by other classes
// In an abstract class, it is not necessary to define what a function does, only declaring them is enough
abstract class Shape{
  
  double get perimeter;
  double get area;
  String get name;
  
//   These functions are only declared and not defined here
//   Every class which inherits from this class will have to define these functions, or be itself an abstract class
   
}

// Circle class must implement all functions of Shape class that are only declared but not defined
class Circle extends Shape{
  
  double _radius; // private

  Circle(this._radius); // Constructor
  
  @override
  double get perimeter => 2 * pi * _radius;
  
  @override
  double get area => pi * _radius * _radius;
  
  @override
  String get name => "I am a circle with radius $_radius";
  
}

class Rectangle extends Shape{
  double _length, _width;
  Rectangle(this._length, this._width); // Constructor
  
  @override
  double get perimeter => 2 * (_length + _width);
  
  @override
  double get area => _length * _width;
  
  @override
  String get name => "I am a rectangle with length $_length and width $_width";
}

// Inheriting Rectangle instead of Shape class, to implement this class with lesser code
class Square extends Rectangle{
  Square(double val) : super(val,val); // Constructor
  
  @override
  String get name => "I am a square with side $_length";
}
