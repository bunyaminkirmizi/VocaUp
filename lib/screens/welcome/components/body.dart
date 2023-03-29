import 'package:flutter/material.dart';
import 'package:voca_up/constants/colors.dart';
import 'package:voca_up/screens/components/rounded_button.dart';
import 'package:voca_up/screens/login/index.dart';
import 'package:voca_up/screens/signup/index.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Hoşgeldiniz',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: size.height * 0.003,
          ),
          SvgPicture.asset('assets/icons/chat.svg', height: size.height * 0.45),
          SizedBox(
            height: size.height * 0.045,
          ),
          RoundedButton(
              text: 'Giriş Yap',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              textColor: Colors.white,
              color: kPrimaryColor),
          RoundedButton(
              text: 'Kayıt Ol',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              textColor: Colors.white,
              color: kPrimaryColor)
        ],
      ),
    );
  }
}
