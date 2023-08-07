import 'package:flutter/material.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';
import 'package:twitter/assets/DummyData.dart';
import 'package:twitter/widgets/bar_menu.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 10,
            backgroundImage: NetworkImage(userList[0]['imgUrl']),
          ),
        ),
        title: SizedBox(
          height: 40,
          child: TextField(
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
              hintText: 'Search...',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return UsersSearchResultsWidget(
                      name: userList[index]['name'],
                      username: userList[index]['username'],
                      bio: userList[index]['bio'],
                      imgUrl: userList[index]['imgUrl'],
                      isVerified: userList[index]['isVerified'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BarMenu(),
    );
  }
}
