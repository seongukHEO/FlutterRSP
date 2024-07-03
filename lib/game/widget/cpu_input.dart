import 'package:flutter/cupertino.dart';
import 'package:flutter_rsp/game/widget/input_card.dart';

import '../enum.dart';

class CpuInput extends StatelessWidget {

  //매개변수를 받는법
  final bool isDone;
  final InputType cpuInput;



  const CpuInput({ required this.isDone, required this.cpuInput , super.key});

  @override
  Widget build(BuildContext context) {
    if(isDone){
      return Placeholder();
    }

    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        Expanded(child: InputCard(
          child: getCpuInput(),
        ),),

        Expanded(child: SizedBox.shrink())
      ]
    );
  }

  Widget getCpuInput(){
    if(isDone){
      return Image.asset(cpuInput.path);
    }
    return SizedBox(height: 80,child: Text("??", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),));
  }
}
