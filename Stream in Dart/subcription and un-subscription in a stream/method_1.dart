/// When subscribe to a stream, it gives a StreamSubscription
/// object that represent the connection to the stream.
/// It provides a method to control and manage your subscription.

void main(){

  var stream=Stream.fromIterable([2,4,6,8,10]);

  var subscription=stream.listen((event) {print(event);});

  /// unsubscribe the stream using cancel
  Future.delayed(Duration(seconds: 4),()=>subscription.cancel());///Used Future class to delay so that we can get the stream before the subscription is canceled
  
}