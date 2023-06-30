///In Dart, extensions are a feature that allows you to add new functionality to 
///existing classes, including classes from external libraries or classes that you don't 
///have control over. Extensions provide a way to extend the behavior of a class 
///without modifying its original implementation or creating a subclass.

class MyClass {
  // Original class implementation
}

extension MyExtension on MyClass {
  void additionalMethod() {
    // Additional functionality
  }
}

void main() {
  MyClass obj = MyClass();
  obj.additionalMethod(); // Extension method called on MyClass instance
}