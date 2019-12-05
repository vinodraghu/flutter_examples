import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _nabBarCurrentIndex = 0;
  List<Widget> _screens = [
    Home(),
    Container(
      child: Center(
        child: Text("Search"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Add"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Hearts"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Profile"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Hello',
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.cast,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.library_add,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: _screens[_nabBarCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _nabBarCurrentIndex = index;
            });
          },
          currentIndex: _nabBarCurrentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.headset,
                  color: Colors.black,
                ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.verified_user,
                  color: Colors.black,
                ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
