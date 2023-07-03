import 'package:rxdart/rxdart.dart';

void main() {
  var subject = BehaviorSubject<int>();
  ValueStream<int> valueStream = subject.stream;

  valueStream.listen((data) => print(data));

  subject.add(2);
  subject.add(4);

  print(valueStream.value);///ValueStream provides you the latest value in the stream synchronously

  print('hello');
}
