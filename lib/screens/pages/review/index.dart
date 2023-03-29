import 'package:flutter/material.dart';
import 'package:voca_up/screens/pages/review/components/body.dart' as Main;
import 'package:voca_up/screens/pages/components/BottomNavBar.dart';

class Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Main.Body(), bottomNavigationBar: BottomNavBar());
  }
}
