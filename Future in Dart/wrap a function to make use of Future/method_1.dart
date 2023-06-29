import 'dart:async';

///Original function that takes a callback for async operation
void performAsyncOperation(callbackAsync){
  Future.delayed(Duration(seconds: 2),(){
    try{
      var result=42;
      callbackAsync(result);
    }catch(error){
      print(error);
    }
  });
}



Future<int> performAsyncOperationFuture(){
  var completer=Completer<int>();
  performAsyncOperation((result) {
    completer.complete(result);
  });
  return completer.future;
}

void main() async{
  print('performing async operation');
  var result=await performAsyncOperationFuture();
  print('async operation completed:$result');
}