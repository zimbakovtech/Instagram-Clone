import 'package:flutter/material.dart';
import 'package:instagram_clone/direct/chats.dart';
import 'direct/chats.dart';
import 'direct/rooms.dart';
import 'direct/requests.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Direct(),
    ));

class Direct extends StatefulWidget {
  @override
  _DirectState createState() => _DirectState();
}

class _DirectState extends State<Direct> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: [
            Text(
              'damjanzimbakov',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.video_call_outlined, color: Colors.black),
              onPressed: () {}),
          IconButton(
            icon: Icon(Icons.note_add_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.black,
          controller: _tabController,
          tabs: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Chats',
                style: TextStyle(
                  color: (_currentIndex == 0) ? Colors.black : Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Rooms',
                style: TextStyle(
                  color: (_currentIndex == 1) ? Colors.black : Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Requests',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Chats(),
          Rooms(),
          Requests(),
        ],
      ),
    );
  }
}
