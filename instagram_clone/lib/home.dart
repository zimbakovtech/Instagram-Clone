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
  HomePage({Key key}) : super(key: key);

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
            height: MediaQuery.of(context).size.height - 203,
            width: 500,
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(posts[index].profile),
                                  fit: BoxFit.fill),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Text(
                          posts[index].username,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Container(
                      height: 500.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(posts[index].post),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: posts[index].isLiked
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_outline),
                          color: posts[index].isLiked ? Colors.red : null,
                          onPressed: () {
                            setState(() {
                              posts[index].isLiked = !posts[index].isLiked;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.message_outlined),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.near_me_outlined),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: posts[index].isSaved
                              ? Icon(Icons.bookmark)
                              : Icon(Icons.bookmark_outline),
                          onPressed: () {
                            setState(() {
                              posts[index].isSaved = !posts[index].isSaved;
                            });
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        (posts[index].likes < 10000)
                            ? '${posts[index].likes} likes'
                            : (posts[index].likes < 100000)
                                ? '${posts[index].likes ~/ 1000},${(posts[index].likes / 100 % 10).toInt()}${(posts[index].likes / 10 % 10).toInt()}${(posts[index].likes % 10).toInt()} likes'
                                : '${posts[index].likes} likes',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Row(
                        children: [
                          Text(
                            '${posts[index].username} ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                          Text(
                            '${posts[index].caption}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Row(
                        children: [
                          Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('dm.jpg'),
                                  fit: BoxFit.fill),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextButton(
                              child: Text(
                                'Add a comment...',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13.0,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
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
