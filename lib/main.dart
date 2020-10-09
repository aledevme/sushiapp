import 'package:flutter/material.dart';
import 'package:sushi_app/screens/detail.dart';
import 'package:sushi_app/screens/home.dart';
import 'package:sushi_app/screens/menu.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        '/' : (BuildContext context) => Home(),
        'menu' : (BuildContext context) => Menu(),
        'detail' : (BuildContext context) => Detail()
      },
    );
  }
}