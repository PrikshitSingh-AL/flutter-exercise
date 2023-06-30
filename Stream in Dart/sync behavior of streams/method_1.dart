import 'dart:async';

void main() {
  // Create a synchronous stream from an iterable
  var stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  // Subscribe to the synchronous stream
  stream.listen(
    (event) {
      print('Received event: $event');
    },
    onDone: () {
      print('Stream is done');
    },
  );

  print('Starting of stream');
}