import 'package:flutter/material.dart';
import 'package:voca_up/screens/pages/mywords/components/body.dart';
import 'package:voca_up/screens/pages/components/BottomNavBar.dart';

class MyWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Body(), bottomNavigationBar: BottomNavBar());
  }
}
