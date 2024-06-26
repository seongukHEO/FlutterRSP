void main (){

  //이게 변수 선언 방법
  //안드로이드는 val point = Point()

  Point point = Point(10.0, 20.0);
  print(point.x);
}

//클래스 기초
// class Point{
//   double? x;
//   double? y;
// }

//명령 생성자
class Point{
  double? x;
  double? y;

  //매개변수를 받게끔 하는 것
  //안드로이드에서 하던 것처럼 class옆에다가 하면 안된다
  //빨간줄이 생성된다 ㅎㅎ

  Point(this.x, this.y);
}