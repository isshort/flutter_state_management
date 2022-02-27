 
void main(List<String> arguments) {
  
  Stream<int> stream=woodStream();
  stream.listen((data){
    print("Your reciver data ${data.toString()}");

  });

}

Stream<int> woodStream() async*{
  for(int i=0;i<=10;i++){
    await Future.delayed(Duration(seconds:2));
    yield i;
  }
}