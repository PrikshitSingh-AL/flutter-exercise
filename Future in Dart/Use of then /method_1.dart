///then is used when we use Future class and when it completes with a value
///we then use 'then' to obtain the value and can perform any desired function on it:

Future<int> add(int a,int b){
  return Future.delayed(Duration(seconds: 2),()=>a+b);
}

void main(){
  add(4,5).then((value) => print(value));
}