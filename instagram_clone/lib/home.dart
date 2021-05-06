import 'package:flutter/material.dart';
import 'direct.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        '/direct': (context) => Direct(),
      },
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'VeganStyle',
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 5.0,
          ),
          IconButton(
            icon: Icon(
              Icons.near_me_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/direct');
            },
          ),
        ],
      ),
    );
  }
}
