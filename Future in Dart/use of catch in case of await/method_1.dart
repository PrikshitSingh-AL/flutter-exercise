///when using await we can handle the error using try catch since
///await either returns value when Future completes with value or throws error.


Future<int> fetchData(){
  return Future.delayed(Duration(seconds: 3),()=>Future.error(Exception("Didnt find the data associated with it")));
}

void main() async{
  try{
    var data=await fetchData();
    print(data);
  }catch(e){
    print(e);
  }
}