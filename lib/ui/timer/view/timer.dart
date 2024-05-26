import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.black,
      child: const Text(
        '00:00',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 60,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
