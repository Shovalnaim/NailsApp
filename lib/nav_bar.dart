// import 'package:animated_navigation_bar/pages/home.dart';
// import 'package:animated_navigation_bar/pages/notification.dart';
// import 'package:animated_navigation_bar/pages/search.dart';
// import 'package:animated_navigation_bar/pages/settings.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// class nav_bar extends StatefulWidget {
//   const nav_bar({super.key});
//
//   @override
//   State<nav_bar> createState() => _nav_barState();
// }
//
// class _nav_barState extends State<nav_bar> {
//   int _selectedPage = 0;
//   //function that recive index page and update the page that shows
//   void navigationToSelectedPage(int index) {
//     setState(() {
//       _selectedPage = index;
//       print('_selectedPage: ' + _selectedPage.toString());
//     });
//   }
//
//   final List<Widget> pages = [
//     home(),
//     search(),
//     settings(),
//     notification(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[_selectedPage],
//       bottomNavigationBar: Container(
//         //decoration: BoxDecoration(),
//         color: Colors.black,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
//           child: GNav(
//               onTabChange: navigationToSelectedPage,
//               selectedIndex: _selectedPage,
//               backgroundColor: Colors.black, //color of the nav bar
//               color: Colors.white, //icon color
//               activeColor: Colors.white, //see the caption.
//               gap: 8,
//               //rippleColor: Colors.grey.shade800,
//               tabBackgroundColor: Colors.grey.shade800,
//               curve: Curves
//                   .easeOutExpo, //animation when the user click on the icon at the nav bar
//               //tabActiveBorder: Border.all(color: Colors.white, width: 1),
//               padding: EdgeInsets.all(20),
//               tabs: [
//                 GButton(
//                   icon: Icons.home,
//                   text: 'HOME',
//                 ),
//                 GButton(
//                   icon: Icons.search,
//                   text: 'SEARCH',
//                 ),
//                 GButton(
//                   icon: Icons.settings,
//                   text: 'SETTINGS',
//                 ),
//                 GButton(
//                   icon: Icons.notification_add,
//                   text: 'NOTIFICATION',
//                 ),
//                 //GButton(icon: Icons.phone,text: 'PHONE',),
//               ]),
//         ),
//       ),
//     );
//   }
// }
