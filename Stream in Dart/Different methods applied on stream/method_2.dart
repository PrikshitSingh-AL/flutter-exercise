

import 'dart:async';

void main(){

  var controller=StreamController<int>();

  controller.add(1);
  controller.add(2);
  controller.add(3);

  ///Transform the stream using the map method
  var transform=controller.stream.map((data)=>data*2);

  ///Subscribe to the transformed stream
  transform.listen((data){
    print('transformed: $data');
  });

  print(transform);

}