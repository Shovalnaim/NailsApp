import 'package:animated_navigation_bar/provider/mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Container(
            child: Text(
          'settings',
          style: TextStyle(fontSize: 40),
        )),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Provider.of<ModeProvider>(context, listen: false)
                        .chaneMode();
                  },
                  icon: Icon(Icons.dark_mode),
                  label: Text('dark'))
            ],
          ),
        )
      ])),
    );
  }
}
