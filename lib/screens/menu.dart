import 'package:flutter/material.dart';
import 'package:sushi_app/models/sushi.dart';
import 'package:sushi_app/models/type.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  //state
  int selected = 0;
  //array list of types of sushi
  List <TypeSushi> typesSushi = [
    TypeSushi(name: 'Maki sushi'),
    TypeSushi(name: 'Chirashizushi'),
    TypeSushi(name: 'Nigirizushi'),
    TypeSushi(name: 'Maki sushi'),
    TypeSushi(name: 'Maki sushi'),
    TypeSushi(name: 'Maki sushi')
  ];

  List <Sushi> sushies = [
    Sushi(
      picture: 'https://img2.freepng.es/20180606/jqi/kisspng-california-roll-sushi-sashimi-tempura-japanese-cui-5b187982be6e21.30876342152833062678.jpg',
      name:'California roll',
      description: 'Avocado & salmon',
      price: '7.99'
    ),
    Sushi(
      picture: 'https://img2.pngio.com/sushi-rolls-png-picture-860384-sushi-roll-png-rainbow-roll-sushi-png-400_400.png',
      name:'Rainbow sushi',
      description: 'Cheese, salmon & avocado',
      price: '7.99'
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
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
              _searchField(),
              _carrouselTypesOfSushi(),
              SizedBox(height: 10),
              _listOfSushi()
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

  Widget _carrouselTypesOfSushi(){
    return Container(
      height: 46,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: typesSushi.length,
      itemBuilder: (BuildContext context, int index){
          bool isSelected = selected == index;
          return GestureDetector(
            onTap: ()=>changeType(index),
            child: Container(
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsets.only(
                top: 10,
                right: 10
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  isSelected ? Container(height: 7, width: 7, decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange, 
                  )) : Container(),
                  SizedBox(width: 10),
                  Text(typesSushi[index].name, 
                    style: TextStyle(
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal
                    ),
                  )
                ],
              )
            )
          );
        }
      )
    );
  }

  changeType(int index){
    setState(() {
      selected = index;
    });
  }

  Widget _listOfSushi(){
    return Expanded(
      child:GridView.builder(
            itemCount: sushies.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index){
              return Container(
                child: Card(
                  child: Column(
                    children: [
                      Text(sushies[index].name)
                    ],
                  ),
                ),
              );
            },
        ),
    );
  }

  
}