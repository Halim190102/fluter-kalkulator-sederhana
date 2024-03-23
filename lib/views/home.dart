import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
// declaring variables
  final Color? color, textColor;
  final String buttonText;
  final Function()? buttontapped;

//Constructor
  const MyButton({
    super.key,
    this.color,
    this.textColor,
    this.buttontapped,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(25),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
