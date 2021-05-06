import 'package:flutter/material.dart';
import 'home.dart';
import 'explore.dart';
import 'add.dart';
import 'activity.dart';
import 'profile.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabPage(),
    ));

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            HomePage(),
            Explore(),
            AddPage(),
            Activity(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Icon(Icons.home_filled, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Icon(Icons.search_outlined, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Icon(Icons.camera_alt, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Icon(Icons.favorite_outline, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Icon(Icons.person, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
