import 'package:flutter/cupertino.dart';

class GameResult extends StatelessWidget {

  final bool isDone;


  const GameResult({required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {

    if(isDone){
      return const Placeholder();
    }
    return Center(child: Text("가위바위보 중 하나를 선택 해주세요", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),);
  }
}
