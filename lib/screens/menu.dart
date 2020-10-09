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
      picture: 'https://www.sushishop.eu/product-6473-400x400/dragon-roll.png',
      name:'California roll',
      description: 'Salmon',
      price: '7.99'
    ),
    Sushi(
      picture: 'https://www.sushishop.eu/product-6473-400x400/dragon-roll.png',
      name:'California roll',
      description: 'Avocado',
      price: '7.99'
    ),
    Sushi(
      picture: 'https://img2.pngio.com/sushi-rolls-png-picture-860384-sushi-roll-png-rainbow-roll-sushi-png-400_400.png',
      name:'Rainbow sushi',
      description: 'Salmon',
      price: '7.99'
    ),
    Sushi(
      picture: 'https://img2.pngio.com/sushi-rolls-png-picture-860384-sushi-roll-png-rainbow-roll-sushi-png-400_400.png',
      name:'Rainbow sushi',
      description: 'Chesee',
      price: '7.99'
    ),
    Sushi(
      picture: 'https://img2.pngio.com/sushi-rolls-png-picture-860384-sushi-roll-png-rainbow-roll-sushi-png-400_400.png',
      name:'Rainbow sushi',
      description: 'Salmon',
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
              SizedBox(height: 20),
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
        labelText: 'Search for your favorite sushi'
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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.55 ),
            ),
            itemBuilder: (BuildContext context, int index){
              var price = sushies[index].price;
              return Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: ()=>Navigator.pushNamed(context, 'detail'),
                      child: Image(
                        height: 130,
                        width: 130,
                        image: NetworkImage(sushies[index].picture),
                      ),
                    ),
                    Text(sushies[index].name,style: TextStyle(
                      fontWeight: FontWeight.bold
                    )),
                    Text(sushies[index].description, 
                    overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('\$$price', style: TextStyle(
                              fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Icon(Icons.add, color: Colors.white),
                        )
                      ],
                    )
                  ],
                )
              );
            },
        ),
    );
  }

  
}