void myFunction() {
  int x = 10;
  if (x > 5) {
    // Conditional block scope
    int y = 20;
    print(x); // Accessible
    print(y); // Accessible
  }
  print(x); // Accessible
  ///print(y); Error: 'y' is not accessible outside the conditional block
}
