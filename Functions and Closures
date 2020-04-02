int add(int a, int b){
  return a+b;
}

int subtract(int a, int b) => a-b;

Function calc(int a){
  int b = 1;
  
  // Closure returned from this function
  return () => print("I am a closure returned from a function, value of a = $a, b = ${b++}");
}

void main() {
  print(subtract(20,10));
  
  //everything is object in dart - including functions
  var func = add;
  print("${func(10,20)}");
  
  //closures - anonymous functions
  (int a, int b){
    print("I am an anonymous function");
    print("Sum of $a and $b is ${a+b}");
  }(2,3);
  
  Function f = calc(20);  // closure (anonymous function) returned from calc function
  f();
  f();
  calc(20)(); // will create a new instance of the closure
  
}


