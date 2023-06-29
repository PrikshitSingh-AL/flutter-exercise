///then:
///It is a method available on Future objects in Dart.
///It allows you to chain callbacks that will be executed when the Future completes
///It's useful when you want to perform specific actions based on the completion or failure of a Future


///await:
///await is used within an async function to pause the execution of the function until a Future completes.
///It allows you to assign the result of the Future directly to a variable.
///The await expression returns the value of the completed Future or throws an error if the Future completes with error.




Future<int> accountBalance(){
  return Future.delayed(Duration(seconds: 4),()=>42000);
}

void main() async{
  accountBalance().then((value) => print(value)); ///use of then
  var balance=await accountBalance();///use of await
  print(balance);
}