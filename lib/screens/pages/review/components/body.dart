import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:endustriyel_app/screens/components/rounded_button.dart';
import 'package:endustriyel_app/screens/pages/review/components/background.dart';
import 'package:endustriyel_app/constants/colors.dart';
import 'package:flip_card/flip_card.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double half = size.width / 2;
    return Background(child: Page());
  }
}

class Page extends StatefulWidget {
  Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _Page();
}

class _Page extends State<Page> {
  Offset initialPosition = const Offset(0, 0);
  double distancex = 0;
  double distancey = 0;
  double counter = 0;
  double angle = 0;
  String lastCard = '';
  bool visible = true;

  List<Widget> cardStack =  [
        PositionedCard(text:"text1"),
        PositionedCard(text:"text2"),
        PositionedCard(text:"text3"),
        PositionedCard(text:"text4"),
        PositionedCard(text:"text5"),
        PositionedCard(text:"text6"),
        PositionedCard(text:"text7"),
      ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  
    double calculateAngle(double distancex) {
      print('angle');
      double maxAngle = 15.0;
      double angle = (distancex / (size.width / 3)) * maxAngle;
      angle.abs() > maxAngle ? angle>0 ? maxAngle: -maxAngle : angle ;
      return angle;
    }
    void makeLastCardAngled(){
      
      if(cardStack.isEmpty){
        setState(() {
          visible=false;
        });
      }else{
        // cardStack.removeAt(cardStack.length-1);
        Object stackTop = cardStack.last;
        cardStack.removeLast();
        setState(() {
          lastCard = (stackTop as PositionedCard).text+' its last card';
        });
      }
    }
    bool? answer(double distancex){
      if(distancex>(size.width / 4)){
        return true;
      }else if (distancex<-(size.width / 4)){
        return false;
      }else{
        return null;
      }
    }
    
    return GestureDetector(
      child: Stack(children: [
        ...cardStack,
        AngledCard(
          angle: angle,
          visible: visible,
          distancex: distancex,
          distancey: distancey,
          text: lastCard)]),
      onVerticalDragStart: (details) {
        initialPosition = details.globalPosition;
      },
      onVerticalDragUpdate: (details) {
        setState(() {
          distancey = details.globalPosition.dy - initialPosition.dy;
          distancex = details.globalPosition.dx - initialPosition.dx;
          angle = calculateAngle(distancex);
        });
      },
      onVerticalDragEnd: (details) {
        setState(() {
          makeLastCardAngled();
          
          print(cardStack);
          distancex = 0;
          distancey = 0;

          angle = calculateAngle(distancex);
        });
      },
    );
  }
}

class PositionedCard extends StatelessWidget {
  final String text;
  const PositionedCard({
    super.key,
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return Align(
        // alignment: Alignment(,distancey*0.01),
        child: Container(
            child: Card(
              color: Colors.blue,
                          shape: RoundedRectangleBorder(
              side :BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(25))),

              child: SizedBox(
        width: 300,
        height: 550,
        child: Center(child: Text(text)),
              ),
            ),
          ),
      );
  }
}

class AngledCard extends StatelessWidget {
  const AngledCard({
    super.key,
    required this.angle,
    required this.distancex,
    required this.distancey,
    required this.text,
    this.visible = true,
    this.side = CardSide.FRONT
  });

  final double angle;
  final double distancex;
  final double distancey;
  final String text;
  final bool visible;
  final CardSide side;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
    turns: AlwaysStoppedAnimation(angle / 360),
    child: Visibility (
      visible :visible,
      child:Align(

      alignment: Alignment(distancex*0.03,distancey*0.03),
      child: Container(
          child: FlipCard(
            side: side,
            speed:340,front: Card(
            color: Colors.red,
            shape: RoundedRectangleBorder(
              side :BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(25))),
            child: SizedBox(
      width: 300,
      height: 550,
      child: Center(child: Text(text + ' front')),
            ),
          ),back:Card(
            
            color: Colors.green,
            shape: RoundedRectangleBorder(
              side :BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(25))),
            child: SizedBox(
      width: 300,
      height: 550,
      child: Center(child: Text(text + ' back')),
            ),
          ),)
        ),
    ),)
        );
  }
}
