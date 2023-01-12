import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: -45,
              top: -30,
              child: Opacity(
                opacity: 0.6,
                child: Image.asset(
                  'assets/images/3.png',
                  width: size.width * 0.5,
                ),
              )),
          Positioned(
              right: -30,
              bottom: -30,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset(
                  'assets/images/4.png',
                  
                  width: size.width * 0.5,
                ),
              )),
              child,
        ],
      ),
    );
  }
}