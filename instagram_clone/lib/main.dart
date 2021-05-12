import 'package:flutter/material.dart';
import 'direct/direct.dart';
import 'direct/search.dart';
import 'home.dart';
import 'explore.dart';
import 'add.dart';
import 'activity.dart';
import 'profile.dart';
import 'likes.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.grey,
      ),
      home: TabPage(),
      routes: {
        '/direct': (context) => Direct(),
        '/search': (context) => SearchDirect(),
        '/likes': (context) => Likes(),
      },
    ));

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomePage(),
          Explore(),
          AddPage(),
          Activity(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.white,
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        tabs: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Icon(
              (_currentIndex == 0) ? Icons.home_filled : Icons.home_outlined,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Icon(
                (_currentIndex == 1)
                    ? Icons.search_sharp
                    : Icons.search_outlined,
                color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Icon(
                (_currentIndex == 2)
                    ? Icons.camera_alt
                    : Icons.camera_alt_outlined,
                color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Icon(
              (_currentIndex == 3) ? Icons.favorite : Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Icon(
              (_currentIndex == 4) ? Icons.person : Icons.person_outline,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
