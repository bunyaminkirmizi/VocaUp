import 'package:flutter/material.dart';
import 'package:endustriyel_app/constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color, textColor;

  const RoundedButton({
    this.text = "",
    required this.onPressed ,
    this.color = kPrimaryColor,
    this.textColor = Colors.white
    // super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: size.width*0.8,
      child: ClipRRect(
      borderRadius: BorderRadius.circular(300),
      child:TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical:20,horizontal:40),
          backgroundColor: color,
        ),

        onPressed: onPressed,
        child: Text(style:TextStyle(color:textColor),text)
        )
        ));
  }
}
