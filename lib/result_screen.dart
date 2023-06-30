import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(9),
          color: Colors.pinkAccent,
          width: double.infinity,
          height: 70,
          padding: const EdgeInsets.all(20),
          child: const Text(
            "RE-CALCULATE",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
