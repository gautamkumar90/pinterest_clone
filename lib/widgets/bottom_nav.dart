import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;

  const BottomNav({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(index == 0 ? Icons.home : Icons.home_outlined, size: 30),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            index == 1 ? Icons.search : Icons.search_outlined,
            size: 30,
          ),
          label: "Search",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.add, size: 30),
          label: "Create",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            index == 3 ? Icons.chat_bubble : Icons.chat_bubble_outline,
            size: 30,
          ),
          label: "Inbox",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            index == 4 ? Icons.person : Icons.person_outline,
            size: 30,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
