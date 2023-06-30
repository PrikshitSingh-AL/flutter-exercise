import 'dart:async';

void main() {
  // Simulating real-time updates
  Stream<int> dataStream = Stream.periodic(Duration(seconds: 1), (count) => count).take(5);

  // Subscribe to the stream for real-time updates
  dataStream.listen((data) {
    print('Received data update: $data');
  });
}
