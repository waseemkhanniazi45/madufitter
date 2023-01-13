import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madufitter/controller/signup_controller.dart';
import 'package:madufitter/login/login_page.dart';
import 'package:madufitter/view/custom_widgets/custom_button.dart';
import 'package:madufitter/view/custom_widgets/my_theme.dart';
import 'package:madufitter/view/signup/component/signup_mobile_field.dart';
import 'package:madufitter/view/signup/component/signup_textfield_decorator.dart';
import 'package:madufitter/view/signup/component/signup_user_field.dart';

import 'component/gendar_selection.dart';
import 'component/password_signup_field.dart';
import 'component/signup_background.dart';
import 'component/signup_profile_picture.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cpassController = TextEditingController();
  SignUpController signUpController = Get.put(SignUpController());

  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SignUpBackground(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SignUpProfilePicture(),
              const SizedBox(
                height: 10,
              ),
              SignUpTextFieldDecorator(
                  child: SignUpUserIdTextField(
                      userIdController: nameController,
                      userIdErrorText: "Name can not be empty",
                      userIdHintText: "Enter Name",
                      userIdHintTextColor: MyTheme.textColor,
                      userIdPrefixIcon: Icons.person,
                      userIdPrefixIconColor: MyTheme.textColor,
                      onUserIdValueChange: () {})),
              SignUpTextFieldDecorator(
                  child: SignUpUserIdTextField(
                      userIdController: emailController,
                      userIdErrorText: "Email id can not be empty",
                      userIdHintText: "Enter Email id",
                      userIdHintTextColor: MyTheme.textColor,
                      userIdPrefixIcon: Icons.email,
                      userIdPrefixIconColor: MyTheme.textColor,
                      onUserIdValueChange: () {})),
              SignUpTextFieldDecorator(
                  child: SignUpMobileTextField(
                      userIdController: mobileController,
                      userIdErrorText: "Mobile no can not be empty",
                      userIdHintText: "Enter Mobile Number",
                      userIdHintTextColor: MyTheme.textColor,
                      userIdPrefixIcon: Icons.phone,
                      userIdPrefixIconColor: MyTheme.textColor,
                      onUserIdValueChange: () {})),
              SignUpTextFieldDecorator(
                  child: SignUpPassTextField(
                userPassController: passController,
                userPassErrorText: 'please Enter Password',
                userPassHintText: 'Password',
                userPassHintTextColor: MyTheme.textColor,
                userPassPrefixIcon: Icons.lock,
                userPassPrefixIconColor: MyTheme.textColor,
                onUserPassValueChange: () {},
                userPassSuffixIcon: Icons.visibility_off,
                userPassSuffixIconColor: MyTheme.textColor,
              )),
              SignUpTextFieldDecorator(
                  child: SignUpPassTextField(
                userPassController: passController,
                userPassErrorText: 'please Enter Password Again',
                userPassHintText: 'Re Enter Password',
                userPassHintTextColor: MyTheme.textColor,
                userPassPrefixIcon: Icons.lock,
                userPassPrefixIconColor: MyTheme.textColor,
                onUserPassValueChange: () {},
                userPassSuffixIcon: Icons.visibility_off,
                userPassSuffixIconColor: MyTheme.textColor,
              )),
              SignUpTextFieldDecorator(
                child: GendarSelection(),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  buttonColor: MyTheme.loginBoxColor,
                  buttonText: 'SIGN UP',
                  textColor: MyTheme.loginBoxTextColor,
                  handleButtonClick: () {
                    signup();
                  }),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have account ?'),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: const Text(
                        'Login',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
  
  void signup() {
    final isValid = _globalKey.currentState!.validate();
    if (isValid){
      print(nameController.text);
    }else{
      return null;
    }
  }
}
