import 'package:flutter/material.dart';

import '../../custom_widgets/my_theme.dart';


class SignUpTextFieldDecorator extends StatelessWidget {
 
 final Widget child;
  const SignUpTextFieldDecorator({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.8,
      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10,),
      decoration: BoxDecoration(
        color: MyTheme.buttonColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: child,
    );
  }
}