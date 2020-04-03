void main() {
  int x = 10;
  // this x has scope inside this code of block or any code of block inside this block only
  
  (){
    print(x);
  }();
  
  printX(x);
}
​
printX(int x){
  print(x);
}
