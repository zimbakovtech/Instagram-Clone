import 'package:flutter/material.dart';
import 'package:instagram_clone/lists.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Chats(),
    ));

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
          child: Card(
            color: Colors.grey[300],
            child: ListTile(
              onTap: () {},
              leading: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                onPressed: () {},
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 10.0, top: 5.0),
            child: Text(
              'Messages',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 203,
            child: ListView.builder(
              itemCount: directs.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 70.0,
                  width: 100.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 0.0,
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, right: 10.0),
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
                                directs[index].status,
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.grey[500]),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.grey[500],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    // child: Padding(
                    //   padding: const EdgeInsets.only(top: 7.0),
                    //   child: ListTile(
                    //     leading: CircleAvatar(
                    //       backgroundImage: AssetImage(directs[index].profile),
                    //       radius: 55.0,
                    //     ),
                    //     title: Text(
                    //       directs[index].name,
                    //       style: TextStyle(fontSize: 14.0),
                    //     ),
                    //     trailing: IconButton(
                    //       icon: Icon(
                    //         Icons.camera_alt_outlined,
                    //         color: Colors.grey[500],
                    //       ),
                    //       onPressed: () {},
                    //     ),
                    //   ),
                    // ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
