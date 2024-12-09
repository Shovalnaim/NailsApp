import 'package:animated_navigation_bar/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:animated_navigation_bar/pages/home.dart';
import 'package:animated_navigation_bar/pages/notification.dart';
import 'package:animated_navigation_bar/pages/search.dart';
import 'package:animated_navigation_bar/pages/settings.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class NavAndMenuPage extends StatefulWidget {
  const NavAndMenuPage({super.key});

  @override
  State<NavAndMenuPage> createState() => _NavAndMenuPageState();
}

class _NavAndMenuPageState extends State<NavAndMenuPage> {
  final List<Widget> pages = [
    const home(),
    const search(),
    const settings(),
    const notification(),
  ];

  final _advancedDrawerController = AdvancedDrawerController();

  int _selectedPageIndex = 0;
  late double height, width;
  void _drawerControl() {
    _advancedDrawerController.showDrawer();
  }

  void _onNavBarTap(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advancedDrawerController,
      openRatio: 0.55,
      backdropColor: Colors.pinkAccent,
      animationCurve: Curves.easeInOut,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Nails Clinic',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: _drawerControl,
          ),
          flexibleSpace: Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.white],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
        ),
        body: pages[_selectedPageIndex],
        bottomNavigationBar: Container(
          color: Colors.pinkAccent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              onTabChange: _onNavBarTap,
              selectedIndex: _selectedPageIndex,
              backgroundColor: Colors.pinkAccent,
              color: Colors.white,
              activeColor: Colors.pinkAccent,
              gap: 8,
              tabBackgroundColor: Colors.white,
              curve: Curves.easeOutExpo,
              padding: const EdgeInsets.all(20),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'HOME',
                  textStyle: TextStyle(color: Colors.pinkAccent),
                ),
                GButton(
                    icon: Icons.search,
                    text: 'SEARCH',
                    textStyle: TextStyle(color: Colors.pinkAccent)),
                GButton(
                    icon: Icons.settings,
                    text: 'SETTINGS',
                    textStyle: TextStyle(color: Colors.pinkAccent)),
                GButton(
                    icon: Icons.notifications,
                    text: 'NOTIFICATION',
                    textStyle: TextStyle(color: Colors.pinkAccent)),
              ],
            ),
          ),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
