///When we create stream using StreamController the resulting stream is async

import 'dart:async';

void main(){

  var controller=StreamController<int>();

  var stream=controller.stream;

  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.add(4);

  controller.close();

  stream.listen((event) {
    print('Received event: $event');
  }, onDone: () {
    print('Stream is done');
  });

  ///This part of the code gets executed first, this means streams show async behaviour
  print('stream starting...');
  
}