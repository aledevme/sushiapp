import 'package:flutter/material.dart';
import 'package:sushi_app/screens/home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        '/' : (BuildContext context) => Home()
      },
    );
  }
}