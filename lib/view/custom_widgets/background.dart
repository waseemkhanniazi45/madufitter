import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
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
              left: -40,
              top: -30,
              child: Image.asset(
                'assets/images/7.png',
                width: size.width * 0.5,
              )),
          Positioned(
              right: -30,
              bottom: -20,
              child: Image.asset(
                'assets/images/6.png',
                width: size.width * 0.5,
              )),
              child,
        ],
      ),
    );
  }
}