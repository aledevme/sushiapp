import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/tablesushi.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}