import 'package:animated_navigation_bar/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text('home'),));

   }
}
