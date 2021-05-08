import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Rooms(),
    ));

class Rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
