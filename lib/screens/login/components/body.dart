import 'package:endustriyel_app/screens/pages/mainpage/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:endustriyel_app/screens/components/rounded_button.dart';
import 'package:endustriyel_app/screens/login/components/already_have_an_account_check.dart';
import 'package:endustriyel_app/screens/login/components/rounded_input_field.dart';
import 'package:endustriyel_app/screens/pages/route.dart' as PagesRoute;
import 'package:endustriyel_app/screens/login/components/background.dart';
import 'package:endustriyel_app/screens/signup/index.dart';

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
          "Giriş Yap",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        SvgPicture.asset(
          'assets/icons/login.svg',
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
        RoundedButton(
            text: "Giriş Yap",
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return PagesRoute.Route();
              }));
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hesabınız yok mu? "),
            SizedBox(
              height: size.height * 0.03,
            ),
            AldreadyHaveAnAccountCheck(onPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            })
          ],
        )
      ],
    ));
  }
}
