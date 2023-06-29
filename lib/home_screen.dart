import 'package:flutter/material.dart';
import 'package:bmi_calculator/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/rounded_button.dart';

const Color containerBgColor = Color(0xFF272A4E);
const textStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w100, fontSize: 20);

const numberStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 70);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: containerBgColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.mars,
                        color: Colors.white,
                        size: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "MALE",
                        style: textStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: containerBgColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.venus,
                        color: Colors.white,
                        size: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "FEMALE",
                        style: textStyle,
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: containerBgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "HEIGHT",
                  style: textStyle,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "180",
                        style: numberStyle,
                      ),
                      Text("cm",
                          style:textStyle)
                    ]),
                Slider(
                  value: 160,
                  min: 130,
                  max: 200,
                  onChanged: (newValue) {},
                  activeColor: Colors.pinkAccent,
                  inactiveColor: Colors.grey,
                )
              ],
            ),
          )),
           Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: containerBgColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "WEIGHT", style: textStyle,
                      ),
                      const Text("60", style: numberStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(icon: FontAwesomeIcons.minus, onPressed:() {} ,),
                          const SizedBox(width: 15,),
                          RoundedButton(icon: FontAwesomeIcons.plus, onPressed:() {} ,)
                        ],
                      )
                    ],
                  ),
                )),
                 Expanded(
                    child: ReusableCard(
                  colour: containerBgColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "AGE", style: textStyle,
                      ),
                      const Text("20", style: numberStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(icon: FontAwesomeIcons.minus, onPressed:() {} ,),
                          const SizedBox(width: 15,),
                          RoundedButton(icon: FontAwesomeIcons.plus, onPressed:() {} ,)
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
