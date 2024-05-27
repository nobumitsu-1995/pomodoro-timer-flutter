import 'package:flutter/material.dart';
import 'package:pomodoro_timer/ui/action_buttons/action_buttons.dart';
import 'package:pomodoro_timer/ui/action_buttons/button.dart';
import 'package:pomodoro_timer/ui/bottom_action_buttons/view/bottom_action_buttons.dart';
import 'package:pomodoro_timer/ui/timer/view/cycle.dart';
import 'package:pomodoro_timer/ui/timer/view/timer.dart';
import 'package:pomodoro_timer/ui/timer/view/timer_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Column(
        children: [
          Center(child: TimerContainer()),
          SizedBox(height: 24,),
          ActionButtons()
        ],
      ),
      bottomNavigationBar: const BottomActionButtons(
        onItemTapped: onTap,
        selectedIndex: currentIndex,
      ),
    );
  }
}
