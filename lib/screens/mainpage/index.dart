import 'package:flutter/material.dart';
import 'package:endustriyel_app/screens/mainpage/components/body.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold( body: Body(),);
  }
}

