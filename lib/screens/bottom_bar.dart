import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_life/screens/home_screen.dart';
import 'package:new_life/screens/profile_screen.dart';
import 'package:new_life/screens/search_screen.dart';
import 'package:new_life/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  void _onItemTapped(int index){
   setState(() {
     _selectedIndex = index;
     print('${_selectedIndex}');
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526488),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label:"Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label:"Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              label:"Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label:"person"),
        ],

      ),
    );

  }
}
