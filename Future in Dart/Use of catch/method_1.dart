///As the Future class can complete either with a value or 
///with an error so to catch that error we use 'catch'

Future<String> customerOrder(){
  return Future.delayed(Duration(seconds: 2),()=>Future.error(Exception("something went wrong!!")));
}

void main(){
  customerOrder().then((value) => print(value)).catchError((error)=>print('Error:$error'));
}