import 'package:flutter/material.dart';
import 'package:trips_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trips',
      home: Home(),
    );
  }
}
