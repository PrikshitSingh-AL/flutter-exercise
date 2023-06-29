/// To show async behaviour of Future :

Future<String> futureAsync(){
  return Future.delayed(Duration(seconds: 4),()=>'Executed');
}

void main(){
  print('started executing');
  futureAsync().then((value) => print(value));///gets executed at last after 4 seconds
  print('still executing');
}