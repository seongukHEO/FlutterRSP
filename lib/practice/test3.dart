void main(){
  //예외처리
  //try - catch
  //finally
  //on
  //throw / rethrow


  int num1 = 10;
  try {
    print(10 / 0);
  }catch(e, s){
    print(e);
    print(s);
    print('에러 발생');
  }finally{
    //여기는 예외가 발생하던 하지않던 무조건 출력하는 부분
    print('여긴 무조건출력!');
  }
}