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
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  "Heaven of Sushi", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30
                ),
                child: Text(
                  "Sushi is a traditional Japanese dish of prepared vinegared rice, usually with some sugar and salt, accompanying a variety of ingredients", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.blueGrey[400]
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: ()=>Navigator.pushNamed(context, 'home'),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward, color: Colors.white),
                      Icon(Icons.arrow_forward_ios, size: 10 ,color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}