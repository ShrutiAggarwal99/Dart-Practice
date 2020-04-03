void main() {
  Person p1 = Person("Shruti", 20);
  Person p2 = Person("Chhoti", 17);
  
  Pub pub = Pub();
  try{
    pub.enter(p1);
  }
  catch(e){
    print(e);
  }
  
//   Catching an error when occured prevents our entire program from crashing
  
  try{
    pub.enter(p2);
  }
  catch(e){
    print(e);
  }
  
  print(pub.drinking);
}

class Person{
  String name;
  int age;
  
  Person(this.name, this.age);
  
  @override
  String toString(){
    return "$name with age $age";
  }
  
}

class Pub{
  List<Person> drinking = List();
  
  void enter(Person p){
    if(p.age<18){
      throw TooYoungException(p);
    }
    else{
      drinking.add(p);
      print("Person $p entered!");
    }
  }
  
}

class TooYoungException implements Exception{
  Person p;
  
  TooYoungException(this.p);
  
  @override
  String toString(){
    return "Person $p is too young for the pub!";
  }

}


