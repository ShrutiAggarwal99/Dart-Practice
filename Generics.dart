// Use of Generics - Code reuse, write just one class/function for all types

void main() {
  
  List<int> list = List();
  Map<int,String> map = Map();
  
//   Generics enable our code to work with arbitrary types
  
//   PrintItem<String> printer = PrintItem(5,"Hey"); // throws error since I wrote 'T extends num'
//   printer.printItems();
  
  PrintItem<double> printer2 = PrintItem(5,10.24); // throws error since I wrote 'T extends num'
  printer2.printItems();
  
  PrintItem<int> printer3 = PrintItem(5,3); // throws error since I wrote 'T extends num'
  printer3.printItems();
  print(printer3.func(2,"Hey"));
  
  print(genericFunc2(20.54));
  
  print(genericFunc3(10, 20.5)); 
  // here the arguments must be a type that extends from num (See the function definition)
  
}

// Class for generic type
// T can be any primitive type or user created type, 
// I can also use inheritance in types like below (now T can only be a type that extends from num like int, double, float)
class PrintItem<T extends num> {
  int times;
  T item;
  
  PrintItem(this.times, this.item);
  
  void printItems(){
    for(int i=0;i<times;i++)
      print(item);
  }
  
  String func<T, S>(T a, S b){
    return "Generic types used : $T and $S";
  }
}

// <T> after a class or function name definition tells that it uses a generic type T
T genericFunc2<T>(T a){
  return a;
}

T genericFunc3<T extends num, S extends num>(T a, S b){
//   can use '+' operator because both T,S type extend num type, if it was just any type then it only extends from Object type and we can't use '+'
  return a+b;
}
