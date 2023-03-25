import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:endustriyel_app/screens/components/rounded_button.dart';
import 'package:endustriyel_app/screens/pages/mainpage/components/background.dart';
import 'package:endustriyel_app/constants/colors.dart';

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
      children: <Widget>[Text("MyWords")],
    ));
  }
}