/// we can use Future.value in this example to wrap a function with another function
/// that returns a Future:

int add(int a,int b){
  return a+b;
}

Future<int> asyncAdd(int a,int b){
  return Future.value(add(a,b));
}

void main() async{
  var result=await asyncAdd(3, 4);
  print(result);
}