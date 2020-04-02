void main() {
  
 var c1 = Complex(10,-30); // 2 - 3 i
 var c2 = Complex(10,20); //3 + 2 i
 print(c1+c2);
 print(c1.multiply(c2));
  
//  static methods and variables can only be called through class name, not instance
 print(Complex.subtract(c1,c2));
 print(Complex.counter); // 5
  
 Quaternion q1 = Quaternion(1,2,3);
 print(q1);  // inherits the parent class method, but we can override it
   
//  All methods and variables of parent (Complex) class are available in child (Quaternion) class, except static methods and variables.
  
 print(Complex.subtract(c1,q1));  
//  we can still call subtract method with Quaternion object, since each of it is a Complex object too, but it will obviously not consider jImag part of the Quaternion object
   
}

// Quaternion
// u + vi + wj
// i = j = sqrt(-1)

class Quaternion extends Complex{
  
  num _jImag;
  
  // the super/base class constructors always execute first, then child class
  Quaternion(num real, num iImag, this._jImag) : super(real,iImag) { // initializer list
    print("Child constructor");
  }
  
  @override
  String toString(){
    return "${this._real} + ${this._imaginary}i + ${this._jImag}j";
  }
  
}

class Complex{

  num _real;  // private
  num _imaginary; // private
  static int counter = 0;   // static variable - accessed through class, single copy for all instances
 
//   final - makes any variable un-modifiable
  
  //Shorthand for Constructor
  Complex(this._real, this._imaginary){
    print("Base constructor");
    counter += 1;
  }
  
  Complex.real(num val) : this(val,0);
  Complex.imaginary(num val) : this(0,val);
  
  // shorthand for getter, setter for private members
  get real => _real;
  set real(num val) => _real = val;
  get imaginary => _imaginary;
  set imaginary(num val) => _imaginary = val;
  
  //OPERATOR OVERLOADING
  Complex operator +(Complex other) => Complex(
      this._real + other.real,
      this._imaginary + other.imaginary
    );
  
  Complex multiply(Complex other){
    // this will increase the counter (since the constructor will be called)
    return Complex(
      this._real * other.real - this._imaginary * other.imaginary,
      this._real * other.imaginary + other.real * this._imaginary);
  }
  
//   // static method - called through class, single copy for all instances
  static Complex subtract(Complex c1, Complex c2) => 
    Complex(c1.real - c2.real, c1.imaginary - c2.imaginary);
  
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
  bool operator ==(Complex other){ 
    if(other.real == this._real && other.imaginary == this._imaginary) 
      return true;
    else 
      return false;
  }
  
}
