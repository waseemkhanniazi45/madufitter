

import 'package:flutter/material.dart';
import 'package:madufitter/login/login_page.dart';
import 'package:madufitter/view/custom_widgets/my_theme.dart';
import 'package:madufitter/view/signup/signup_page.dart';

import '../custom_widgets/background.dart';
import '../custom_widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to MADUFITTERS',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/welcome.png',
                width: size.width * 0.3,
              ),
              const SizedBox(height: 10,),
              CustomButton(
                  buttonColor: MyTheme.buttonColor,
                  buttonText: "LOGIN",
                  textColor: Theme.of(context).colorScheme.primary,
                  handleButtonClick: (){loginButtonHandlerClick(context);}),
                  const SizedBox(height: 10,),
              CustomButton(
                  buttonColor: MyTheme.textColor,
                  buttonText: "SIGN UP",
                  textColor: Theme.of(context).colorScheme.onPrimary,
                  handleButtonClick: (){signUpButtonHandlerClick(context);}),
            ],
          ),
        ),
      ),
    );
  }


loginButtonHandlerClick(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder:  (context)=>LoginPage()));
  //print('tapped');
}
signUpButtonHandlerClick(context){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
}
}