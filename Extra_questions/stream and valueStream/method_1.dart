
import 'package:rxdart/rxdart.dart';

Stream<int> countStream() async* {
  for (var i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() {
  var stream = countStream();

/// A Stream is a fundamental asynchronous data stream that emits a 
/// sequence of events over time. It can emit any number of events, including zero or 
/// multiple events. It is commonly used for handling asynchronous operations and 
/// continuous data streams. You can listen to a stream using the listen method and react to each emitted event.

  stream.listen((data) {
    print('Received data from Stream: $data');
  });

///A ValueStream is a specific type of Stream provided by the 
///rxdart package. It extends the capabilities of a Stream by providing 
///additional methods and guarantees that each listener receives the most recent 
///value upon subscription. It ensures that the stream always has a value and that listeners receive that value immediately.

  var behaviorSubject = BehaviorSubject<int>();

  ValueStream<int> valueStream = behaviorSubject.stream;

  valueStream.listen((data) {
    print('Received data from ValueStream: $data');
  });

  behaviorSubject.add(42);
}