import 'package:flutter/material.dart';
import 'package:instagram_clone/lists.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SearchDirect(),
    ));

class SearchDirect extends StatefulWidget {
  @override
  _SearchDirectState createState() => _SearchDirectState();
}

class _SearchDirectState extends State<SearchDirect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextField(
                cursorColor: Colors.black,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
            ),
            Divider(height: 1.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                'Suggested',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: accounts(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List accounts() {
    List<Widget> accounts = [];

    for (int i = 0; i < 20; i++) {
      accounts.add(getAccount(i));
    }
    return accounts;
  }

  Widget getAccount(int index) {
    return Container(
      height: 70.0,
      width: 100.0,
      child: Card(
        color: Colors.white,
        elevation: 0.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(directs[index].profile),
                radius: 28.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    directs[index].name,
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Text(
                    directs[index].username,
                    style: TextStyle(fontSize: 13.0, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
