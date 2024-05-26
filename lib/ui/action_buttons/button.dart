import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final bool isDisabled;
  const Button({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.isDisabled
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled == true ? null : () => onPressed(),
      style: ElevatedButton.styleFrom(
        elevation: 10,
        backgroundColor: Colors.blueGrey[100],
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(
          side: BorderSide(
            style: BorderStyle.none,
          ),
        ),
      ),
      child: Icon(icon, size: 48),
    );
  }
}
