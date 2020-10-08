import 'package:flutter/material.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
             top: 20,
            left: 20,
            right: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerMenuAndProfile()
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerMenuAndProfile(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage('assets/menu.png'),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[100],
            ),
            height: 40,
            width: 40,
            child: Image(
              image: AssetImage('assets/profile.png'),
            ),
          )
        ],
      ),
    );
  }
}