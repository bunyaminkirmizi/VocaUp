import 'package:flutter/material.dart';
import 'package:endustriyel_app/screens/pages/account/components/body.dart';
import 'package:endustriyel_app/screens/pages/components/BottomNavBar.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Body(), bottomNavigationBar: BottomNavBar());
  }
}
