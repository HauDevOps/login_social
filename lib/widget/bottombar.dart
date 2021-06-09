import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled, size: 30, color: Colors.tealAccent[400],),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded, size: 30, color: Colors.tealAccent[400],),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, size: 30, color: Colors.tealAccent[400],),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, size: 30, color: Colors.tealAccent[400],),
          label: '',
        )
      ],
    );
  }
}
