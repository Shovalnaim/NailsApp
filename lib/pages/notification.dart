import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: Text('notification',style: TextStyle(fontSize: 40),),
    ),);
  }
}
