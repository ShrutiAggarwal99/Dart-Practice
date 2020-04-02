void main() {
  
  var c = Complex(2,3);
//   print(c.real);  // null  : only when real was public in class Complex
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
  
  var c3 = Complex.real(3);
  var c4 = Complex.imaginary(-2);
  print(c3);
  print(c4);
  
}

//types/classes named in UpperCamelCase by convention
class Complex{
  
  // num is the parent of types - int, float, double - all of which are objects in dart
  num _real;  // private
  num _imaginary; // private
  
  // Constructor
//   Complex(num real, num imaginary){
//     this._real = real;
//     this._imaginary = imaginary;
//   }
  
  //Shorthand for Constructor
  Complex(this._real, this._imaginary);
  
  Complex.real(num val) : this(val,0);
  Complex.imaginary(num val) : this(0,val);
  
  // getters and setters for the private members
//   void setReal(num val) => this._real = val;
//   num getReal() => _real;
//   void setImaginary(num val) => this._imaginary = val;
//   num getImaginary() => this._imaginary;
  
  // shorthand for getters and setters
  get real => _real;
  set real(num val) => _real = val;
  get imaginary => _imaginary;
  set imaginary(num val) => _imaginary = val;
  
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
//     if(other.getReal() == this._real && other.getImaginary() == this._imaginary) 
    if(other.real == this._real && other.imaginary == this._imaginary)  // members of other object accessed using getters
      return true;
    else 
      return false;
  }
  
}
