import 'dart:io';

void main() {
  List<String> list = ["Shruti", "Seema", "Varun", "Chander"];

  String input;
  print("Enter an integer : ");
  input = stdin.readLineSync();

  int index;
  
//   Basic try-catch clock in dart
//   try{
//     index = int.parse(input);
//     print("Name at index $index is ${list[index]}");
//   }
//   catch(e){
//     print(e);
//   }
  
  
//   More efficient try-on-finally blocks
  try{
    index = int.parse(input);
    print("Name at index $index is ${list[index]}");
  }
  on FormatException{
    print("Could not parse the input, please input an integer");
  }
  on RangeError{
    print("Integer was out of range");
  }
  finally{ // this block always runs whether any exception occurs or even if no exception occurs
    print("You selected $index out of ${list.length}");
  }
  
  // try-on way is better to use when we know what should happen when a specific type of error occurs
  
  // In a try block as soon as an exception occurs, no line below that line in the try block is executed.
  // It goes to the catch or ob blocks immediately
  
}
