import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
                child: Container(
                padding:EdgeInsets.all(12),
                // alignment: Alignment.bottomCenter,
                margin:EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10
                ),
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 48, 44, 44).withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children:[
                SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.house)

                ),SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.quiz)

                ),SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.my_library_add)

                ),SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.person)

                ),
                SizedBox(
                  
                  height: 36,
                  width: 36,
                  child: ElevatedButton(onPressed: (){
                    
                    Navigator.pop(context);
                  },child:Icon(Icons.exit_to_app)
                  )

                )
              ]
              ),
              )
              );
  }
}
