import 'package:flutter/material.dart';
import 'package:pomodoro_timer/ui/timer/view/cycle_bar.dart';

class Cycle extends StatelessWidget {
  // タイマーの繰り返し設定回数
  final int cycle;
  // タイマーの繰り返し残り回数
  final int leftCycle;
  // 長い休憩時間
  final int cycleToLongRestTime;

  const Cycle({
    super.key,
    required this.cycle,
    required this.leftCycle,
    required this.cycleToLongRestTime
  });

  @override
  Widget build(BuildContext context) {
    List<int> list = List.filled(cycle, 0);

    Color color(int index) {
      final color = index + 1 > cycle - leftCycle
        ? cycleToLongRestTime != 0 && (index + 1) % cycleToLongRestTime == 0
          ? const Color(0xFFCF4F4F)
          : const Color(0xFF666666)
        : const Color(0xFFEBEBEB);
      return color;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        ...list.asMap().entries.map((e) =>
          CycleBar(
            color: color(e.key),
            width: ((MediaQuery.of(context).size.width * 0.7) / list.length) - 4,
          )
        )
      ]
    );
  }
}
