import 'package:flutter/material.dart';
import 'package:madufitter/login/components/login_background.dart';
import 'package:madufitter/login/components/password_field.dart';
import 'package:madufitter/view/custom_widgets/custom_button.dart';
import 'package:madufitter/view/custom_widgets/my_theme.dart';

import 'components/textfield_decorator.dart';
import 'components/user_id_text_field.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String userIdErrorText = "User id cannot be Empty";
  String userIdHintText = "Enter User Id";
  Color userIdHintTextColor = MyTheme.loginBoxTextColor;
  IconData userIdPrefixIcon = Icons.person;
  IconData userPassSuffixIcon = Icons.visibility_off;
  Color userPassSuffixIconColor = MyTheme.buttonColor;
  Color userIdPrefixIconColor = MyTheme.buttonColor;

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/login.png',
                width: size.width * 0.6,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldDecorator(
                      child: UserIdTextField(
                        userIdController: userIdController,
                        userIdErrorText: userIdErrorText,
                        userIdHintText: userIdHintText,
                        userIdHintTextColor: userIdHintTextColor,
                        userIdPrefixIcon: userIdPrefixIcon,
                        userIdPrefixIconColor: userIdPrefixIconColor,
                        onUserIdValueChange: (value) {
                          print(value);
                        },
                      ),
                    ),
                    TextFieldDecorator(
                      child: UserPassTextField(
                        userPassController: passController,
                        userPassErrorText: "Password cannot be Empty",
                        userPassHintText: "Password",
                        userPassHintTextColor: MyTheme.loginBoxTextColor,
                        userPassPrefixIcon: Icons.lock,
                        userPassPrefixIconColor: MyTheme.buttonColor,
                        userPassSuffixIcon: userPassSuffixIcon,
                        userPassSuffixIconColor: userPassSuffixIconColor,
                        onUserPassValueChange: (value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        buttonColor: MyTheme.buttonColor,
                        buttonText: "Login",
                        textColor: MyTheme.loginBoxColor,
                        handleButtonClick: () {
                          print('Login');
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Dont have account ?',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
