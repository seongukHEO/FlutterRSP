import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_rsp/game/widget/user_input.dart';

import 'enum.dart';
import 'widget/cpu_input.dart';
import 'widget/game_result.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  
  late bool isDone;
  InputType? _userInput;
  late InputType _cpuInput;

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDone = false;
    setCpuInput();
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone, cpuInput: _cpuInput,)),
        Expanded(child: GameResult(isDone : isDone)),
        Expanded(child: UserInput(isDone : isDone, callback: setUserInput, userInput: _userInput,)),
      ],
    );
  }

  void setUserInput(InputType userInput){
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }


  void setCpuInput(){
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];

  }
}
