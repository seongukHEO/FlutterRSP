import 'package:flutter/cupertino.dart';
import 'package:flutter_rsp/game/user_input.dart';

import 'cpu_input.dart';
import 'game_result.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  
  late bool isDone;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDone = false;
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone)),
        Expanded(child: GameResult(isDone : isDone)),
        Expanded(child: UserInput(isDone : isDone)),
      ],
    );
  }
}
