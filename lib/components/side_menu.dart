

import 'package:animated_navigation_bar/components/navAndMenuPage.dart';
import 'package:animated_navigation_bar/pages/home.dart';
import 'package:animated_navigation_bar/pages/notification.dart';
import 'package:animated_navigation_bar/pages/search.dart';
import 'package:animated_navigation_bar/pages/settings.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return

        Container(
          color: Colors.pinkAccent,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Home', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const home()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text('Settings', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const settings()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.notification_add, color: Colors.white),
                title: const Text('Notification', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const notification()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.search, color: Colors.white),
                title: const Text('search', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const search()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.white),
                title: const Text('Log-out', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const NavAndMenuPage()),//here to add navigation to login page
                  );
                },
              ),
            ],
          ),
        );

  }
}
