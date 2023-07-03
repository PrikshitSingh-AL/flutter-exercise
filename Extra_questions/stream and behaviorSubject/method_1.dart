import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  // Creating a StreamController
  var controller = StreamController<int>();

  // Creating a Stream
  var stream = controller.stream;

  // Creating a BehaviorSubject
  var behaviorSubject = BehaviorSubject<int>();

  // Subscribing to the Stream
  stream.listen((data) {
    print('Received data from Stream: $data');
  });

  // Subscribing to the BehaviorSubject
  behaviorSubject.listen((data) {
    print('Received data from BehaviorSubject: $data');
  });

  // Adding data to the Stream
  controller.add(1);
  controller.add(2);

  // Adding data to the BehaviorSubject
  behaviorSubject.add(1);
  behaviorSubject.add(2);

  // Accessing the last emitted value from the BehaviorSubject
  var lastValue = behaviorSubject.value;
  print('Last emitted value from BehaviorSubject: $lastValue');

  // Closing the StreamController
  controller.close();

  // Closing the BehaviorSubject
  behaviorSubject.close();
}
