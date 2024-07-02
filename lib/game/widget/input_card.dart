import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? callback;

  const InputCard({ required this.child,  this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          callback?.call();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey, width: 8),
          ),
          child: child,
        ),
      ),
    );
  }
}