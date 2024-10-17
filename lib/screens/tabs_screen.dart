import 'package:flutter/material.dart';

import 'communities_screen.dart';
import 'following_screen.dart';
import '../components/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = [
    FollowingScreen(),
    CommunitiesScreen(),
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Image.asset(
              'assets/images/JeuxLogo.jpg',
              height: 60,
            ),
          ),
        ),
      ),
      drawer:
      MainDrawer(),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedScreenIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Seguindo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Comunidades",
          ),
        ],
      ),
    );
  }
}
