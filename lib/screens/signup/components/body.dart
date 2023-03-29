import 'package:voca_up/screens/components/rounded_button.dart';
import 'package:voca_up/screens/login/components/already_have_an_account_check.dart';
import 'package:voca_up/screens/login/components/rounded_input_field.dart';
import 'package:voca_up/screens/login/index.dart';
import 'package:voca_up/screens/signup/index.dart';
import 'package:voca_up/screens/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:voca_up/screens/signup/components/background.dart';
import 'package:voca_up/constants/colors.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Kayıt Ol",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        SvgPicture.asset(
          'assets/icons/signup.svg',
          height: size.height * 0.35,
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        RoundedInputField(
          hintText: "birisi@example.com",
          onChanged: (value) {},
          icon: Icons.person,
        ),
        RoundedInputField(
            hintText: "Parola",
            onChanged: (value) {},
            icon: Icons.lock,
            obscureText: true,
            suffixIcon: Icons.remove_red_eye),
        RoundedButton(text: "Kayıt Ol", onPressed: () {}),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hesabınız yok mu? "),
            SizedBox(
              height: size.height * 0.03,
            ),
            AldreadyHaveAnAccountCheck(
                login: false,
                onPress: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                })
          ],
        )
      ],
    ));
  }
}
