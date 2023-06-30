import 'dart:async';

void main() {
  // Create a StreamController
  var controller = StreamController<int>();

  // Retrieve the stream from the controller
  var stream = controller.stream;

  // Add events to the stream
  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.add(4);

  // Indicate that no more events will be added to the stream
  controller.close();

  // Subscribe to the stream and handle events
  stream.listen((event) {
    print('Received event: $event');
  }, onDone: () {
    print('Stream is done');
  });
}
