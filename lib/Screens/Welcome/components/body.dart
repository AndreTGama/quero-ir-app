import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quero_ir_app/Components/background.dart';
import 'package:quero_ir_app/Components/rounded_button.dart';
import 'package:quero_ir_app/Screens/Login/login_screen.dart';
import 'package:quero_ir_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center( 
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Align(
                child: Text(
                  "Seja bem-vindo ao Quero Ir",
                  style: TextStyle(fontWeight: FontWeight.bold)
                )
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                text: "SIGNUP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

