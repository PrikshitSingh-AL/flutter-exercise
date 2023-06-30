import 'dart:async';

void main(){
  ///Create a StreamController to manage the stream
  var controller=StreamController<int>();

  ///Add data to the stream using the add method
  controller.add(1);
  controller.add(2);
  controller.add(3);

  ///Create a subscription to listen to the stream
  var subscription=controller.stream.listen((data){
    print('Recieved $data');
  },
  onError: (error){
    print(error);
  },
  onDone: (){
    print('stream is done');
  });

  print(subscription);

}