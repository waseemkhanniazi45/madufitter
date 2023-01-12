import 'package:flutter/material.dart';

import '../../view/custom_widgets/my_theme.dart';


class TextFieldDecorator extends StatelessWidget {
 
 final Widget child;
  const TextFieldDecorator({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.8,
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10,),
      decoration: BoxDecoration(
        color: MyTheme.loginBoxColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: child,
    );
  }
}