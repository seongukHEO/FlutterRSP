import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  Test5();

}


class Test5 extends StatelessWidget {
  const Test5({super.key});

  @override
  Widget build(BuildContext context) {
    //스크롤 뷰를 만드는 방법!!
    //Row에서 사용하기 위해서는 scrollDirection: Axis.horizontal,를 붙여줘야한다!
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.red,child: Text("container1"),),
            Container(color: Colors.green,child: Text("container2"),),
            Container(color: Colors.blue,child: Text("container3"),),
          ],
        ),
    );
  }
}
