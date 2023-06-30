import 'dart:async';

Stream<int> countStream(int count) async* {
  for (int i = 0; i < count; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  var stream = countStream(5);

  await for (var value in stream) {
    print('Received event: $value');
  }

  print('End of main');
}
