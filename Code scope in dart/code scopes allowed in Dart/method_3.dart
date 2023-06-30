void myFunction() {
  for (int i = 0; i < 5; i++) {
    // Loop block scope
    int x = i * 2;
    print(x); // Accessible
  }
  ///print(x); Error: 'x' is not accessible outside the loop block
}
