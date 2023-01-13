import 'package:flutter/material.dart';

class SignUpBackground extends StatelessWidget {
  final Widget child;
  const SignUpBackground({
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
              left: 0,
              top: 0,
              child: Opacity(
                opacity: 0.7,
                child: Image.asset(
                  'assets/images/1.png',
                  width: size.width * 0.4,
                ),
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset(
                  'assets/images/2.png',
                  
                  width: size.width * 0.4,
                ),
              )),
              child,
        ],
      ),
    );
  }
}