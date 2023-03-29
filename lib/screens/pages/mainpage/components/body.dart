import 'package:voca_up/screens/pages/account/index.dart';
import 'package:voca_up/screens/pages/mywords/index.dart';
import 'package:voca_up/screens/pages/review/index.dart';
import 'package:voca_up/screens/pages/stats/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:voca_up/screens/components/rounded_button.dart';
import 'package:voca_up/screens/pages/mainpage/components/background.dart';
import 'package:voca_up/constants/colors.dart';
// import 'package:rive/rive.dart';

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
        Text("mainpage"),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Stats();
              }));
            },
            child: Text("stats")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Review();
              }));
            },
            child: Text("review")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyWords();
              }));
            },
            child: Text("mywords")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Account();
              }));
            },
            child: Text("account")),
        // Scaffold(

        // bottomNavigationBar: SafeArea(
        //   child: Container(
        //   padding:EdgeInsets.all(12),
        //   margin:EdgeInsets.symmetric(
        //     horizontal: 24
        //   ),
        //   decoration: BoxDecoration(
        //   color: Colors.grey.withOpacity(0.8),
        //   borderRadius: BorderRadius.all(Radius.circular(24))
        // ),
        // child: Row(
        //   mainAxisSize: MainAxisSize.min,

        // children:[
        //   SizedBox(
        //     height: 36,
        //     width: 36,
        //     child: Icon(Icons.house)

        //   ),SizedBox(
        //     height: 36,
        //     width: 36,
        //     child: Icon(Icons.quiz)

        //   ),SizedBox(
        //     height: 36,
        //     width: 36,
        //     child: Icon(Icons.my_library_add)

        //   ),SizedBox(
        //     height: 36,
        //     width: 36,
        //     child: Icon(Icons.person)

        //   )
        // ]
        // ),
        // )
        // ),
        // ),

        // Scaffold(),
        //   // bottomNavigationBar: Container(
        //     // padding:EdgeInsets.all(12),
        //     // margin:EdgeInsets.symmetric(
        //     //   horizontal: 24
        //     // ),
        //   //   decoration: BoxDecoration(
        //   //   color: Colors.black.withOpacity(0.8),
        //   //   // borderRadius: BorderRadius.all(Radius.circular(24))
        //   // ),
        //   // child: Row(
        //   // children:[
        //   //   SizedBox(
        //   //     height: 36,
        //   //     width: 36,
        //   //     child: Icon(Icons.house)

        //   //   ),SizedBox(
        //   //     height: 36,
        //   //     width: 36,
        //   //     child: Icon(Icons.house)

        //   //   ),SizedBox(
        //   //     height: 36,
        //   //     width: 36,
        //   //     child: Icon(Icons.house)

        //   //   ),SizedBox(
        //   //     height: 36,
        //   //     width: 36,
        //   //     child: Icon(Icons.house)

        //   //   )
        //   // ]
        //   // ),
        //   // )
        // ),
      ],
    ));
  }
}
