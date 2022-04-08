import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.topic_outlined),
          activeIcon: Icon(Icons.topic),
          label: "Topics",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin_outlined),
          activeIcon: Icon(Icons.person_pin),
          label: "Profile",
        ),
      ],
      onTap: (idx) {},
    );
  }
}
