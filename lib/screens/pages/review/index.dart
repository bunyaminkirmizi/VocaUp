import 'package:flutter/material.dart';
import 'package:endustriyel_app/screens/pages/review/components/body.dart';
import 'package:endustriyel_app/screens/pages/components/BottomNavBar.dart';

class Review extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold( body: Body(),
      bottomNavigationBar: BottomNavBar());
  }
}