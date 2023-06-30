class MyClass {
  // Public constructor
  MyClass() {
    print("Public constructor");
  }

  // Private named constructor
  MyClass._privateConstructor() {
    print("Private constructor");
  }

  // Public factory method
  factory MyClass.create() {
    // Call the private constructor internally
    return MyClass._privateConstructor();
  }
}

void main() {
  // Attempting to use the private constructor directly will result in an error
  // MyClass._privateConstructor();

  // Using the factory method to create an instance of MyClass
  MyClass obj = MyClass.create(); // Output: "Private constructor"
}
