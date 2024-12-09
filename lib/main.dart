import 'package:animated_navigation_bar/components/navAndMenuPage.dart';
import 'package:animated_navigation_bar/nav_bar.dart';
import 'package:animated_navigation_bar/provider/mode_provider.dart';
import 'package:animated_navigation_bar/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>
        ModeProvider()
      ,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: Provider.of<ModeProvider>(context).lightModeEnable
            ? ModeTheme.lightMode
            : ModeTheme.darkMode,
        debugShowCheckedModeBanner: false,

        home: NavAndMenuPage());
  }
}
