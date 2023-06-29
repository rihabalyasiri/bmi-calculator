import 'package:flutter/material.dart';
import 'package:bmi_calculator/card.dart';

const Color containerBgColor = Color(0xFF272A4E);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: containerBgColor,)),
                Expanded(child: ReusableCard(colour: containerBgColor,))
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: containerBgColor,)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: containerBgColor,)),
                Expanded(child: ReusableCard(colour: containerBgColor,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
