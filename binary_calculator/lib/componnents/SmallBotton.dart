import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SmallButtonImage extends StatelessWidget {
  Color color;
  String imagePath;
  SmallButtonImage({super.key, required this.color , required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        width: 0.2 * screenSize.width,
        height: 0.06*screenSize.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath) , fit: BoxFit.fill, alignment: Alignment.center),
        color: color,
        borderRadius: BorderRadius.circular(7.0),
        ),
        // child: Image(
        //     image: AssetImage(imagePath),
        //   ),

      ),
    );
  }
}

class SmallButtonText extends StatelessWidget {
  Color color;
  String value;
  SmallButtonText({super.key, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        width: 0.2 * screenSize.width,
        height: 0.08*screenSize.height,
        decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7.0)
        ),
        child: Center(child: Text(value , 
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
        )),
      ),
    );
  }
}
