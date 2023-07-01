///In Dart, extensions are a feature that allows you to add new functionality to 
///existing classes, including classes from external libraries or classes that you don't 
///have control over. Extensions provide a way to extend the behavior of a class 
///without modifying its original implementation or creating a subclass.

void main(){
  var dup="hello".duplicate();
  print(dup);
}

extension StringDuplicate on String{
  String duplicate(){
    return this+this;
  }
}