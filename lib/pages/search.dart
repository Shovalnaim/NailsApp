import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: Text('search',style: TextStyle(fontSize: 40),),
    ),);
  }
}
