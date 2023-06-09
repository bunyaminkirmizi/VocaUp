import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  
  const Background({
    super.key,
    required this.child

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            width: size.width*0.35,
            child: Image.asset('assets/images/signup_top.png')),
          Positioned(
            bottom:0,
            right:0,
            width: size.width*0.4,
            child: Image.asset('assets/images/login_bottom.png'),
          ),
          child
        ],

      ),
    );
  }
}