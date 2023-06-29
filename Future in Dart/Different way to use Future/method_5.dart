///Chaining asynchronous operation with then:

Future<int> fetchUserData(){
  return Future.delayed(Duration(seconds: 2),()=>42);
}

void main(){
  fetchUserData().then((value){
    print(value);
  }).catchError((error){
    print('Error:$error');
  });
}