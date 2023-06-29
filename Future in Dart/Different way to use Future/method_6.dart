///Handling multiple Futures with Future.wait:

Future<String> fetchName(){
  return Future.delayed(Duration(seconds: 2),()=>'John');
}

Future<int> fetchAge(){
  return Future.delayed(Duration(seconds: 3),()=>30);
}

void main() async{
  var result=await Future.wait([fetchName(),fetchAge()]);
  var name=result[0];
  var age=result[1];
  print("Name:$name, Age:$age");
}