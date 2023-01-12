import 'package:flutter/material.dart';
import 'package:madufitter/view/custom_widgets/my_theme.dart';

class UserPassTextField extends StatefulWidget {
  const UserPassTextField({
    Key? key,
    required this.userPassController,
    required this.userPassErrorText,
    required this.userPassHintText,
    required this.userPassHintTextColor,
    required this.userPassPrefixIcon,
    required this.userPassPrefixIconColor,
    required this.onUserPassValueChange,
    required this.userPassSuffixIcon,
    required this.userPassSuffixIconColor,
  }) : super(key: key);

  final TextEditingController userPassController;
  final String userPassErrorText;
  final String userPassHintText;
  final Color userPassHintTextColor;
  final IconData userPassPrefixIcon;
  final Color userPassPrefixIconColor;
  final IconData userPassSuffixIcon;
  final Color userPassSuffixIconColor;
  final Function onUserPassValueChange;

  @override
  State<UserPassTextField> createState() => _UserPassTextFieldState();
}

class _UserPassTextFieldState extends State<UserPassTextField> {
  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = false;
    return TextFormField(
      controller: widget.userPassController,
      onChanged: (value) {
        widget.onUserPassValueChange(value);
      },
      cursorColor: MyTheme.loginBoxTextColor,
      style: TextStyle(color: MyTheme.loginBoxTextColor),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.userPassErrorText;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: widget.userPassHintText,
        hintStyle: TextStyle(color: widget.userPassHintTextColor),
        border: InputBorder.none,
        suffixIcon: IconButton(
          icon: isPasswordVisible==true
              ?  const Icon(Icons.visibility_off)
              :  const Icon(Icons.visibility),
          color: widget.userPassSuffixIconColor,
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
        prefixIcon: Icon(
          widget.userPassPrefixIcon,
          color: widget.userPassPrefixIconColor,
        ),
      ),
    );
  }
}
