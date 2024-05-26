import 'package:flutter/material.dart';
import 'package:pomodoro_timer/ui/action_buttons/button.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Button(icon: Icons.play_arrow, onPressed: () {}, isDisabled: false,),
          Button(icon: Icons.pause, onPressed: () {}, isDisabled: true,),
          Button(icon: Icons.stop, onPressed: () {}, isDisabled: false,)
        ],
      ),
    );
  }
}
