import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MediumButton extends StatelessWidget {
  String value;
  Color color;
  MediumButton({super.key , required this.color , required this.value});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        width: 0.45 * screenSize.width,
        height: 0.07*screenSize.height,
        decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7.0)
        ),
        child: Center(child: Text(value , 
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}
