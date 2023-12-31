import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/rounded_button.dart';
import 'package:bmi_calculator/genders.dart';

const Color containerBgColor = Color(0xFF272A4E);
const textStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w100, fontSize: 20);

const numberStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 70);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color activeColor = Colors.white30;
  Color inactiveColor = Color(0xFF272A4E);
  Color maleColor = Color(0xFF272A4E);
  Color femaleColor = Color(0xFF272A4E);
  int height = 160;
  int weight = 60;
  int age = 25;

  void activeGender(Gender selectedGender) {
    if (selectedGender == Gender.MALE) {
      maleColor = activeColor;
      femaleColor = inactiveColor;
    } else {
      maleColor = inactiveColor;
      femaleColor = activeColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeGender(Gender.MALE);
                    });
                  },
                  child: ReusableCard(
                    colour: maleColor,
                    child: const Column(
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
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeGender(Gender.FEMALE);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleColor,
                    child: const Column(
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: numberStyle,
                      ),
                      const Text("cm", style: textStyle)
                    ]),
                Slider(
                  value: height.toDouble(),
                  min: 130,
                  max: 200,
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue.toInt();
                    });
                  },
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
                        "WEIGHT",
                        style: textStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          RoundedButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          )
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
                        "AGE",
                        style: textStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          RoundedButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ResultScreen(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(9),
              color: Colors.pinkAccent,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
