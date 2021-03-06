import 'package:flutter/material.dart';
import 'pages.dart';
import 'package:dreamtrip/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomeScreen(), ExplorePage(), PastTripsPage(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('Dream trip')),
      // ),
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 42,
        child: BottomNavigationBar(
          iconSize: 20,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          backgroundColor: Colors.white,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.explore,), label: 'Explore',),
            BottomNavigationBarItem(icon: Icon(Icons.history,), label: 'Past Trips',),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}
