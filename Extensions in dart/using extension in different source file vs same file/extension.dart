extension SumOfNumbers on int{
  static var temp=1;
  int fact(){
    for(var i=1;i<=this;i++){
      temp=temp*i;
    }
    return temp;
  }
}