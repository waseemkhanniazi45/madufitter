import 'package:flutter/material.dart';

import '../../view/custom_widgets/my_theme.dart';

class UserIdTextField extends StatelessWidget {
  const UserIdTextField({
    Key? key,
    required this.userIdController,
    required this.userIdErrorText,
    required this.userIdHintText,
    required this.userIdHintTextColor,
    required this.userIdPrefixIcon,
    required this.userIdPrefixIconColor,
    required this.onUserIdValueChange,
  }) : super(key: key);

  final TextEditingController userIdController;
  final String userIdErrorText;
  final String userIdHintText;
  final Color userIdHintTextColor;
  final IconData userIdPrefixIcon;
  final Color userIdPrefixIconColor;
  final Function onUserIdValueChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userIdController,
      onChanged: (value) {
        onUserIdValueChange(value);
      },
      cursorColor: MyTheme.loginBoxTextColor,
      style: TextStyle(color: MyTheme.loginBoxTextColor),
      validator: (value) {
        if (value!.isEmpty) {
          return userIdErrorText;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: userIdHintText,
        hintStyle: TextStyle(color: userIdHintTextColor),
        border: InputBorder.none,
        prefixIcon: Icon(
          userIdPrefixIcon,
          color: userIdPrefixIconColor,
        ),
      ),
    );
  }
}
