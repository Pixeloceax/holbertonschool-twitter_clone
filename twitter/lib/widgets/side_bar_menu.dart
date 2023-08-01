import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  @override
  _SideBarMenuState createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[100],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text(
              "User Name",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "0 Followers 0 Following",
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png"),
            ),
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(bottom: BorderSide(color: Colors.black))),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Lists'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Bookmarks'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.flash_on),
            title: const Text('Moments'),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            title: const Text('Settings and privacy'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Help Center'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
