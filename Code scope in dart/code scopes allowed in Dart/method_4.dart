class MyClass {
  // Class scope
  int x = 10;

  void myMethod() {
    // Method scope
    int y = 20;
    print(x); // Accessible
    print(y); // Accessible
  }
}

void main() {
  MyClass myObject = MyClass();
  print(myObject.x); // Accessible
  ///print(myObject.y); Error: 'y' is not accessible outside the method scope
}
