void main() {
  A c = C("Shruti");
//   object c will be treated like A only, i.e only methods and variables declared in class A can be called
  
  c.hello();  
//   hello function of class C will be called, since it is always overridden there by the implementing class

//   c.hi(); //error
//   c.goodbye();  //error
  
//   Will work now
//   Casting
  (c as B).hi();
  (c as C).goodbye();
  (c as C).printStamp(); // using mix in and casting both
  
}

class A{
  void hello(){
    print("Hello from A");
  }
}

class B{
  String b;
  
  B(this.b); // Constructor to initialise b
  
  void hi(){
    print("Hi from B");
  }
  
  void goodbye(){
    print("Good bye $b from B");
  }
}

class TimeStamp{  
//   MixIn is other way to append one class attributes and methods to another 
//   The class mixing in another class does not need to override all the attributes/methods of the class it is mixing - unlike what we do in interfaces using implement
//   to use this as Mixin, this class should not be a subclass of any other class (except Object class) and should not have a declared constructor
//   so we can use TimeStamp as a Mixin class - through 'with' keyword
  DateTime time = DateTime.now();
  void printStamp(){
    print(time);
  }
}

// class C is implementing the entire interface of classes A,B (for single inheritance we use 'extends')
// Now class C will have to implement/override the entire interface of the classes it is implementing (every method, variable)
// A, B could have been abstract classes too
class C with TimeStamp implements A,B{
  @override
  String b;
  
  C(this.b);
  
  @override
  void hello(){
    print("Hello from C");
  }
  
  @override
  void hi() => print("Hi from C");
  
  @override
  void goodbye() => print("Good bye $b from C");
  
}
