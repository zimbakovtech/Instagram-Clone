import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'direct.dart';
import 'lists.dart';

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
      backgroundColor: Colors.white,
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
              onPressed: () => Navigator.of(context).pushNamed('/direct')),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: profiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 75.0,
                              width: 75.0,
                              decoration: BoxDecoration(
                                color: (profiles[index].isPressed)
                                    ? Colors.grey
                                    : Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 2.0, left: 2.4),
                              child: Container(
                                height: 70.0,
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, left: 6.0),
                              child: Container(
                                child: GestureDetector(onTap: () {
                                  setState(() {
                                    profiles[index].isPressed = true;
                                  });
                                }),
                                height: 63.0,
                                width: 63.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: ExactAssetImage(
                                        profiles[index].profile),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        '${profiles[index].username}',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      ),
                    ],
                  );
                }),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey[350],
          ),
          Container(
            height: 500.0,
            width: 500.0,
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 450.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(posts[index].post),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
