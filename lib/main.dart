import 'package:flutter/material.dart';
import 'package:dreamtrip/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dream Trip',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryIconTheme: IconThemeData(color: Colors.grey[850],),
      ),
      home: HomePage(),
    );
  }
}
