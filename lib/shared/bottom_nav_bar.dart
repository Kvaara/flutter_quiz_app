import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 25,
          ),
          activeIcon: Icon(
            Icons.home_filled,
            size: 25,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.topic_outlined,
            size: 25,
          ),
          activeIcon: Icon(
            Icons.topic,
            size: 25,
          ),
          label: "Topics",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_pin_outlined,
            size: 25,
          ),
          activeIcon: Icon(
            Icons.person_pin,
            size: 25,
          ),
          label: "Profile",
        ),
      ],
      onTap: (idx) {},
    );
  }
}
