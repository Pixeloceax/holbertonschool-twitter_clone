import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/search_screen.dart';
import 'package:twitter/providers/share_state.dart';
import 'package:twitter/screens/chat_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';

class BarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedState>(
      builder: (context, sharedState, _) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.grey[100],
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Messages',
            ),
          ],
          currentIndex: sharedState.pageNum,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            sharedState.setpageIndex = index;
            _navigateToScreen(context, index);
          },
        );
      },
    );
  }

  void _navigateToScreen(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationsScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
        break;
    }
  }
}
