import 'package:flutter/material.dart';
import 'lists.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Likes(),
    ));

class Likes extends StatefulWidget {
  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Likes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
            child: Card(
              color: Colors.grey[300],
              child: ListTile(
                onTap: () => Navigator.of(context).pushNamed('/search'),
                leading: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  onPressed: () => Navigator.of(context).pushNamed('/search'),
                ),
                title: Text(
                  'Search',
                  style: TextStyle(color: Colors.grey[500], fontSize: 16.0),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 122,
            child: ListView(
              children: accounts(),
            ),
          ),
        ],
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              // child: FlatButton(
              //   color: directs[index].following ? Colors.white : Colors.blue,
              //   child: Text(
              //     directs[index].following ? 'Following' : 'Follow',
              //     style: TextStyle(
              //       color:
              //           directs[index].following ? Colors.black : Colors.white,
              //     ),
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       directs[index].following = !directs[index].following;
              //     });
              //   },
              // ),
              child: TextButton(
                child: Container(
                  height: 30.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    color:
                        directs[index].following ? Colors.white : Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(
                      color: directs[index].following
                          ? Colors.grey[400]
                          : Colors.blue,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      directs[index].following ? 'Following' : 'Follow',
                      style: TextStyle(
                        color: directs[index].following
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    directs[index].following = !directs[index].following;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
