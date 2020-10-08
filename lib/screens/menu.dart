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
              _headerMenuAndProfile(),
              SizedBox(height: 20),
              _textPresentation(),
              SizedBox(height: 20),
              _searchField()

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

  Widget _textPresentation(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Healthy and', style: TextStyle(
          fontSize: 25
        )),
        SizedBox(
          height: 10,
        ),
        Text('Delicious sushi', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700
        )),
      ],
    );
  }

  Widget _searchField(){
    return TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10)
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search),
        hintText: 'Search your favorite sushi'
      ),
    );
  }
}