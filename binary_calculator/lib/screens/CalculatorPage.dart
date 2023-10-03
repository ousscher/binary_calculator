import 'dart:ffi';

import 'package:binary_calculator/componnents/BigButton.dart';
import 'package:binary_calculator/componnents/MediumButton.dart';
import 'package:binary_calculator/componnents/SmallBotton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //le container de la page
        color: Color.fromARGB(255, 40, 40, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //le container qui va contenir l'entete
              height: 0.1 * screenSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.exit_to_app_rounded,
                            size: 28.0,
                            color: Color.fromARGB(219, 0, 255, 208),
                          )),
                      Container(
                        width: 0.7 * screenSize.width,
                        child: const Center(
                            child: Text(
                          "Binary Calculator",
                          style: TextStyle(
                            color: Color.fromARGB(219, 0, 255, 208),
                            fontSize: 22.0,
                          ),
                        )),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.help_outline,
                            size: 28.0,
                            color: Color.fromARGB(219, 0, 255, 208),
                          )),
                    ],
                  ),
                  Container(
                    child: Image(image: AssetImage("assets/images/line.png")),
                  ),
                ],
              ),
            ),
            Container(
              //le corps de la calculatrice
              height: 0.32 * screenSize.height,
              width: 0.9 * screenSize.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0)),
            ),
            Container(
              //les bouttons
              height: 0.45 * screenSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 0.08*screenSize.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallButtonText(value: "AC", color: Color.fromARGB(255, 178, 227, 255)),
                        SmallButtonText(value: ")", color: Color.fromARGB(255, 178, 227, 255)),
                        SmallButtonText(value: "(", color: Color.fromARGB(255, 178, 227, 255)),
                        SmallButtonImage(color: Color.fromARGB(242, 8, 156, 241), imagePath: "assets/images/delete.png")
                      ],
                    ),
                  ),
                  Container(
                    height: 0.08*screenSize.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallButtonImage(color: Color.fromARGB(255, 178, 227, 255), imagePath: "assets/images/or.png"),
                        SmallButtonImage(color: Color.fromARGB(255, 178, 227, 255), imagePath: "assets/images/and.png"),
                        SmallButtonImage(color: Color.fromARGB(255, 178, 227, 255), imagePath: "assets/images/xor.png"),
                        SmallButtonImage(color: Color.fromARGB(242, 8, 156, 241), imagePath: "assets/images/not.png"),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.08*screenSize.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MediumButton(color: Color.fromARGB(255, 178, 227, 255), value: "0"),
                        SmallButtonText(value: "+", color: Color.fromARGB(242, 8, 156, 241)),
                        SmallButtonText(value: "/", color: Color.fromARGB(242, 8, 156, 241))
                      ],
                    ),
                  ),
                  Container(
                    height: 0.08*screenSize.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MediumButton(color: Color.fromARGB(255, 178, 227, 255), value: "1"),
                        SmallButtonText(value: "AC", color: Color.fromARGB(242, 8, 156, 241)),
                        SmallButtonText(value: "AC", color: Color.fromARGB(242, 8, 156, 241))
                      ],
                    ),
                  ),
                  Container(
                    height: 0.08*screenSize.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BigButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.01 * screenSize.height,
            )
          ],
        ),
      ),
    );
  }
}
