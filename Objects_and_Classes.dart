void main() {
  
  var c = Complex(2,3);
//   print(c.real);  // null
//   print(c.imaginary);  // null
  print(c); // toString() method of the class called
  
//   c.real = 2;
//   c.imaginary = -3;
//   print(c); 
  
//   var c2 = Complex()
//     ..real = 2
//     ..imaginary = -3;
  var c2 = Complex(2,3);
  print(c == c2);
  
}

//types/classes named in UpperCamelCase by convention
class Complex{
  
  // num is the parent of types - int, float, double - all of which are objects in dart
  num _real;  // private
  num _imaginary; // private
  
  // Constructor
  Complex(num real, num imaginary){
    this._real = real;
    this._imaginary = imaginary;
  }
  
  void setReal(num val) => this._real = val;
  
  num getReal() => _real;
  
  void setImaginary(num val) => this._imaginary = val;
  
  num getImaginary() => this._imaginary;
  
  @override
  String toString(){
    if(_real != null && _imaginary != null){
      return ("$_real + ${_imaginary}i");
    }
    else{
      return ("null");
    }
  }
  
  @override 
  bool operator == (other){
    if(!(other is Complex))
      return false;
    if(other.getReal() == this._real && other.getImaginary() == this._imaginary) 
      return true;
    else 
      return false;
  }
  
}
