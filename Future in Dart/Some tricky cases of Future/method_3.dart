import 'dart:async';

/// Timeouts and Time limited operation:

Future<int> fetchAmount(){
  return Future.delayed(Duration(seconds: 10),()=>120000);
}

Future<int> performTimeLimitedOper(){
  var future=fetchAmount();

  return future.timeout(Duration(seconds: 5),onTimeout: ()=>throw TimeoutException('operation timed out'));
}

void main(){
  performTimeLimitedOper().then((value) => print(value));
}