/// There cannot be multiple listeners on a single stream.

import 'dart:async';

void main() {
  // Create a StreamController
  var controller = StreamController<int>();

  // Retrieve the stream from the controller
  var stream1 = controller.stream;
  var stream2 = controller.stream;
  var stream3 = controller.stream;

  // Subscribe listeners to the separate streams
  stream1.listen((event) {
    print('Listener 1: Received event: $event');
  });

  stream2.listen((event) {
    print('Listener 2: Received event: $event');
  });

  stream3.listen((event) {
    print('Listener 3: Received event: $event');
  });

  // Add events to the controller
  controller.add(1);
  controller.add(2);
  controller.add(3);

  // Close the controller
  controller.close();

  print('End of main');
}

/// This will give an error:Unhandled exception:
///Bad state: Stream has already been listened to.