import 'package:flutter/material.dart';
import 'package:endustriyel_app/screens/pages/mywords/components/body.dart';
import 'package:endustriyel_app/screens/pages/components/BottomNavBar.dart';

class MyWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Body(), bottomNavigationBar: BottomNavBar());
  }
}
