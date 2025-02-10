import 'package:fenora/Screens/categoryscreen.dart';
import 'package:fenora/Screens/homescreen.dart';
import 'package:fenora/Screens/shoppingcart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List _pages = [
    HomeScreen(),
    CategoryScreen(),
    Shoppingcart(),
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectedPage,
        backgroundColor: Colors.grey[500],
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(IconlyLight.buy), label: 'Cart'),
        ],
      ),
    );
  }
}
