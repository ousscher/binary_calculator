import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BigButton extends StatelessWidget {
  const BigButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: 0.9 * screenSize.width,
        height: 0.07*screenSize.height,
         decoration: BoxDecoration(
        color: Color.fromARGB(242, 8, 156, 241),
        borderRadius: BorderRadius.circular(7.0)
        ),
        child: Center(child: Text("=" , 
        style: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold
        ),)),
    );
  }
}