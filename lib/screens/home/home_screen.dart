import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/screens/bottom-bar/calendar/calendar_bottm_screen.dart';
import 'package:working_app/screens/bottom-bar/home/home_bottom_screen.dart';
import 'package:working_app/screens/bottom-bar/profile/profile_bottom.dart';
import 'package:working_app/widgets/common/app_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    HomeBottomScreen(),
    CalendarBottomScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primary,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: Column(
          children: [
            AppHeader(),
            Expanded(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
    );
  }
}
