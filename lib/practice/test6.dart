import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test6 extends StatelessWidget {
  const Test6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //Flexible Widget을 사욜하면 비율로 나타낼 수 있다!
      //flex는 비율의 정
      children: [
        Flexible(flex: 1,child: Container(color: Colors.red,)),
        Flexible(flex: 2,child: Container(color: Colors.blue,)),
      ],
    );
  }
}
