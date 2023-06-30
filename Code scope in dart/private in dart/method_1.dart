///make a class or a method private by using the underscore _ symbol as a prefix to their names.

class _MyPrivateClass {
  void _myPrivateMethod() {
    print("This is a private method.");
  }
}

void main() {
  _MyPrivateClass myPrivateObject = _MyPrivateClass();
  myPrivateObject._myPrivateMethod(); // Accessible within the same library or file
}

///_MyPrivateClass and _myPrivateMethod are both private because of the leading underscore in their names. They can only be accessed within the same library or file.