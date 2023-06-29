///Parallel execution:

Future<int> fetchData(){
  return Future.delayed(Duration(seconds: 3),()=>4233);
}

Future<String> fetchName(){
  return Future.delayed(Duration(seconds: 2),()=>'John');
}

Future<void> multipleFunc(){
  var future1=fetchData();
  var future2=fetchName();
  return Future.wait([future1,future2]);
}

void main(){
  multipleFunc();
}