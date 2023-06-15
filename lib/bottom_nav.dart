import 'package:anime_app/screens/account_page.dart';
import 'package:anime_app/screens/home_page.dart';
import 'package:anime_app/screens/saved_page.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _selectedIndex = 0;
  List<Widget> screens = const [
    HomePage(),
    SavedPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (value) => setState(() {
          _selectedIndex = value;
        }),
        items: const [
          //{ Home Icon }
          BottomNavigationBarItem(
            label: "Homepage",
            icon: Icon(Icons.home_outlined),
          ),

          // { Saved Icon }
          BottomNavigationBarItem(
            label: "Saved Page",
            icon: Icon(Icons.save_outlined),
          ),

          //{ Account Icon}
          BottomNavigationBarItem(
            label: "Account Page",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: screens[_selectedIndex],
    );
  }
}
