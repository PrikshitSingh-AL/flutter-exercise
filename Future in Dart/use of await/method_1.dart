///await is used to pause the execution of an async function untill
///the Future completes, then it retrieves the result of that Future.

Future<int> fetchData(){
  return Future.delayed(Duration(seconds: 2),()=>42);
}

void main() async{
  print('fetching data');
  var result=await fetchData();
  print('data fetched:$result');
}