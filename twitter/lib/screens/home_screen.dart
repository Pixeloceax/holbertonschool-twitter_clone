import 'package:flutter/material.dart';
import 'package:twitter/widgets/side_bar_menu.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/post_widget.dart';
import 'package:twitter/assets/DummyData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.blue),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      // body: PostWidget(
      //   name: userList[0]['name'],
      //   username: userList[0]['username'],
      //   imgUrl: userList[0]['imgUrl'],
      //   isVerified: userList[0]['isVerified'],
      //   content:
      //       "llkjqdlkfjlqkdjfmlqjdmlkjfdlsqjflqjdfljqmldfjlmsdqkjfmlqkjfdlkjdsqlfisjflrsufjqljrliqjfoidqjlfjqdlfjlkqdjfmlkqjdflkqoirfoirsj",
      // ),
      backgroundColor: Colors.grey[100],
      bottomSheet: BarMenu(),
    );
  }
}
