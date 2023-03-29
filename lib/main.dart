import 'package:flutter/material.dart';
import 'package:voca_up/screens/welcome/index.dart';
import 'package:voca_up/constants/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Endustriyel',
        theme: ThemeData(
            primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
        home: WelcomeScreen());
  }
}
