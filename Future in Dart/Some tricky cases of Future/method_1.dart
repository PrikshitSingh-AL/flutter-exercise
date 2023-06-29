///Chaining multiple Futures:

int addFunc(int a){
  return a+1;
}

int multiplyFunc(int a){
  return a*2;
}

Future<int> chainingFunc(){
  return Future.delayed(Duration(seconds: 3),()=>10
  );
}

void main(){
  chainingFunc()
  .then((value) => addFunc(value))
  .then((value) => multiplyFunc(value))
  .then((value) => print(value));
}