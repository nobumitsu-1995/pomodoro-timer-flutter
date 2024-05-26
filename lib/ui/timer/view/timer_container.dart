import 'package:flutter/material.dart';
import 'package:pomodoro_timer/ui/timer/view/cycle.dart';
import 'package:pomodoro_timer/ui/timer/view/timer.dart';

class TimerContainer extends StatelessWidget {
  const TimerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: const Column(
        children: [
          Timer(),
          SizedBox(height: 8,),
          Cycle(cycle: 4, leftCycle: 3, cycleToLongRestTime: 3)
        ],
      ),
    );
  }
}
