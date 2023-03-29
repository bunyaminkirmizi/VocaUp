import 'package:voca_up/constants/colors.dart';
import 'package:flutter/material.dart';

class AldreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback? onPress;
  const AldreadyHaveAnAccountCheck(
      {super.key, this.login = true, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Text(login ? "Kayıt Olun" : "Giriş Yapın",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold)),
    );
  }
}
