import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quero_ir_app/Components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[ 
          const Align(
            child: Text(
            "Seja bem-vindo ao Quero Ir",
            style: TextStyle(fontWeight: FontWeight.bold)
          )),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          )
        ],
      ),
    );
  }
}
