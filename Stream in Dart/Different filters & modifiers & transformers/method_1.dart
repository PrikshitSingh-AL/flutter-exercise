

void main(){

  // Create a stream with some data
  var stream=Stream.fromIterable([1,2,3,4,5,6,7,8,9,10]);

  // Filter the even numbers
  var evenStream=stream.where((event) => event%2==0);

  // Take the first 3 numbers
  var takeStream=stream.take(3);

  // Skip the first 2 numbers
  var skipStream=stream.skip(2);

  // Filter out duplicate numbers
  var distinctStream=stream.distinct();

  // Transform the stream by doubling each number
  var doubleStream=stream.map((event) => event*2);

  // Expand the stream by repeating each number twice
  var expandedStream=stream.expand((element) => [element,element]);

   // Print the results
  evenStream.listen((event) {print('even: $event');});

  takeStream.listen((event) {print('Take: $event');});

  skipStream.listen((event) {print('Skip: $event');});

  distinctStream.listen((event) {print('distinct: $event');});

  doubleStream.listen((event) {print('double: $event');});

  expandedStream.listen((event) {print('expanded: $event');});



}