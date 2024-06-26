import 'package:flutter/cupertino.dart';
import 'package:flutter_rsp/game/enum.dart';

class UserInput extends StatelessWidget {

  final bool isDone;

  const UserInput({ required this.isDone ,super.key});

  @override
  Widget build(BuildContext context) {
    if(isDone){
      return Placeholder();
    }
    
    return Row(
      children: _getInputs(),
    );
  }
  
  List<Widget> _getInputs(){
    return InputType.values.map((type) => Expanded(
      child: Container(
        child: Image.asset(type.path),
      ),
    )).toList();
  }
}
