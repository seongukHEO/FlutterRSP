import 'package:flutter/cupertino.dart';
import 'package:flutter_rsp/game/enum.dart';

import 'input_card.dart';

class UserInput extends StatelessWidget {

  final bool isDone;
  final Function(InputType) callback;

  const UserInput({ required this.isDone, required this.callback ,super.key});

  @override
  Widget build(BuildContext context) {
    if(isDone){
      return Placeholder();
    }
    
    return Row(
      children: _getInputs(callback),
    );
  }
  
  List<Widget> _getInputs(Function(InputType) callback){
    return InputType.values.map((type) => InputCard(callback: () { callback.call(type); },
    child: Image.asset(type.path),)).toList();
  }
}

