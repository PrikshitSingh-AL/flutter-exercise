///using await/async with Future:
Future<int> fetchData() async{
  await Future.delayed(Duration(seconds: 2));
  return 42;
}

void main() async{
  var result=await fetchData();
  print(result);
}