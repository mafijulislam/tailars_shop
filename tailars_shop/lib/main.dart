

import 'package:flutter/material.dart';
import 'package:tailars_shop/Auth/Splash.dart';

import 'Auth/profile.dart';
import 'ecommerce/Home.dart';
import 'ecommerce/ListProduct.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splash()
      //splash(),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  PageController _pageController = PageController();
  List<Widget> pages = [Home(), ListProduct(), profile()];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: pages,
          onPageChanged: onPagedChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.indigo,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: 'Home',
              activeIcon: Icon(Icons.map),
              //backgroundColor: Colors.pink
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Product',
              // title: new Text("Self Help")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'profile',
            ),

          ],
          //backgroundColor: Colors.teal,
          elevation: 20,
          currentIndex: _selectedIndex,
          onTap: (int selectedItems) {
            _pageController.jumpToPage(selectedItems);
          },
        )
    );
  }

  void onPagedChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}