import 'dart:async';

void main() {
  // Simulating user input stream
  Stream<String> userInputStream = Stream.fromIterable(['hello', 'world', '']);

  // Perform input validation on the stream
  userInputStream.listen((input) {
    if (input.isEmpty) {
      print('Please enter a value.');
    } else {
      print('Valid input: $input');
    }
  });
}
