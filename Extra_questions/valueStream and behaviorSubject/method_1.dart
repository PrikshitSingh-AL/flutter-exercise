

import 'package:rxdart/rxdart.dart';

void main(){

  final subject=BehaviorSubject<int>();

  subject.add(1);
  subject.add(2);

  subject.stream.listen(print);///It provides the last value in an asynchronous manner.
  print("hello");
}
