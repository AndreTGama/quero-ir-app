import 'package:flutter/material.dart';
import 'package:quero_ir_app/constants.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      backgroundColor: color,
    );

    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: TextButton(
            style: raisedButtonStyle,
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          )),
    );
  }
}