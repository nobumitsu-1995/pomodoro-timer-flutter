import 'package:flutter/material.dart';

class BottomActionButtons extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;
  const BottomActionButtons({super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {onItemTapped(index);},
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "HOME",
          activeIcon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: "お知らせ",
          activeIcon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer_outlined),
          label: "タイマー設定",
          activeIcon: Icon(Icons.timer)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help_outline),
          label: "ヘルプ",
          activeIcon: Icon(Icons.help)
        )
      ],
    );
  }
}
