import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(50, 50),
        shape: const CircleBorder(),
        alignment: Alignment.center,
        backgroundColor: Colors.white30,
      elevation: 20
      ),
      child: FaIcon(
        icon,
        size: 15,
        color: Colors.white,
      ),
    );
  }
}
