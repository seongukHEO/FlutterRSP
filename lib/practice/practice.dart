void main(){
  // 불변형 변수 (코틀린의 val)


  //변수 선언 방법
  //타입 + 이름 = 예시값

  //1, bool
  bool isTrue = true;

  //2, int
  int num = 100;

  //3, double
  double numDouble = 3.14;

  //4, String
  String string = 'HelloWorld';

  //5, null
  Null thisIsNull = null;

  // print(isTrue);
  // print(num);
  // print(numDouble);
  // print(string);
  // print(thisIsNull);



  //가변형 변수
  //var, dynamic이 존재한다

  var value = 1;
  value = 2;
  
  //dynamic의 경우 코드가 진행됨에 따라 타입이 바뀌어도 전혀 문제가 없다
  dynamic dynamicValue = 100;
  dynamicValue = 'Hello';

  print(dynamicValue);
  print(value);



}