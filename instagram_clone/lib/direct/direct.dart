import 'package:flutter/material.dart';
import 'chats.dart';

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

class _DirectState extends State<Direct> {
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
      ),
      body: Chats(),
    );
  }
}
