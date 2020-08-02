import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lostofpeople/FORM_INPUTS/location.dart';
import 'package:lostofpeople/Screens/edit_post_screen.dart';
import 'package:lostofpeople/Screens/posts_overview_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController();
  List<Widget> screens = [
    PersonOverViewScreen(),
    LocationPersonHome(),
    EditPersonScreen(),
  ];
  int indexPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      indexPage = index;
    });
  }

  changePage(page) {
    pageController.jumpToPage(page);
    print(indexPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: screens,
        controller: pageController,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        // buttonBackgroundColor: Colors.blueAccent,
        height: 50,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(Icons.search, size: 30),
          Icon(Icons.create, size: 30),
        ],
        onTap: changePage,
        index: indexPage,
      ),
    );
  }
}
