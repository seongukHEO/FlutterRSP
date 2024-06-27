import 'dart:async';

void main (){
  //비동기 프로그래밍
  // async / await / Future : 1회만 응답을 돌려 받는 경우
  // async* / yield / Stream : 지속적으로 응답을 돌려 받는 경우

  // Future<void> todo(int second) async {
  //   await Future.delayed(Duration(seconds: second));
  //   print(second);
  // }
  //
  // //각 2, 1, 4초 시간을 두고 출력이 된다
  // todo(2);
  // todo(1);
  // todo(4);



  // async* / yield / Stream : 지속적으로 응답을 돌려 받는 경우

  Stream<int> todo() async*{
    int counter = 0;

    while(counter <= 10){
      counter ++;
      await Future.delayed(Duration(seconds: 1));
      print(counter);
      yield counter;
    }
    print("todo is Done");
  }

  todo().listen((event){});






}