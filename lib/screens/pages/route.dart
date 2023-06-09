import 'package:flutter/material.dart';
import 'package:voca_up/screens/pages/account/components/body.dart' as Account;
import 'package:voca_up/screens/pages/mainpage/components/body.dart'
    as MainPage;
import 'package:voca_up/screens/pages/mywords/components/body.dart' as MyWords;
import 'package:voca_up/screens/pages/review/components/body.dart' as Review;
import 'package:voca_up/screens/pages/stats/components/body.dart' as Stats;
import 'package:voca_up/screens/pages/components/BottomNavBar.dart'
    as BottomNavBar;

class Route extends StatefulWidget {
  const Route({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<Route> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    // Stats.Body(),
    MyWords.Body(),
    Review.Body(),
    Account.Body(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.house),
            //   label: 'house',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_add),
              label: 'Kelimelerim',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz),
              label: 'Tekrar Et',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Hesabım',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
