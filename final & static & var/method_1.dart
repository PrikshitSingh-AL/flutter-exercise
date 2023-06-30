///final
///   Indicates that the variable can be assigned a value only once.
///   The value of a final variable must be initialized either at the point of declaration or in the constructor.
///   0nce assigned, the value of a final variable cannot be changed.
///   The type of the final variable is determined automatically based on the assigned value.

final int x = 10;
final String name = "John";


///static
///    Indicates that the variable belongs to the class rather than an instance of the class.
///    Only a single copy of the variable is shared among all instances of the class.
///    Static variables are initialized only once, usually at the time of their declaration or within a static initializer.
///    Static variables are accessible using the class name followed by the variable name.

class MyClass {
  static int count = 0;
}

void main() {
  MyClass.count = 10;
  print(MyClass.count);
}