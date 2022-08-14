import 'package:flutter/material.dart';
import 'package:salon_testing/bottom_nav.dart/nav_appointment.dart';
import 'package:salon_testing/bottom_nav.dart/nav_inbox.dart';
import 'package:salon_testing/bottom_nav.dart/nav_map.dart';
import 'package:salon_testing/bottom_nav.dart/nav_profile.dart';
import 'package:salon_testing/bottom_nav.dart/home_screen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItem = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  final List<Widget> _pages = [
    const HomeScreen1(),
    const NavAppointment(),
    const NavMap(),
    const NavInbox(),
    const NavProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey[700],
        unselectedItemColor: Colors.grey[400],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_rounded),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
