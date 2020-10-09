import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: GestureDetector(
          onTap: ()=>Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right:20),
            child: Icon(Icons.favorite, color: Colors.orange),
          )
        ],
      ),
      body:Container(
        padding: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color:Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight:Radius.circular(40.0),
            )
          ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
            _sushiImage(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 350),
                _floatOption(),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal:20 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Rolled Maki Sushi', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      )),
                      
                      _options(),
                      Text('Ingredients', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      )),
                      SizedBox(height: 10),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vel dui consequat, tempus ipsum at, dapibus tellus. Vestibulum ultrices arcu vel sagittis viverra. Aenean eu nulla lectus. Etiam iaculis rhoncus velit, sit amet condimentum leo finibus a. Nam eu imperdiet purus. Praesent sit amet congue augue, condimentum volutpat felis. Proin ut vestibulum lorem. Cras et risus molestie, egestas magna sit amet, rhoncus dui. Suspendisse finibus rhoncus risus. Donec ex nisi, lobortis non tortor sed, tempor convallis lacus. Quisque justo turpis, molestie sit amet purus eu, suscipit consequat nibh. Nunc dictum ultricies leo ac luctus.')
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child:Container(
          height: 50,
          color: Colors.black,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Place Order', style: TextStyle(
                color: Colors.white
              )),
              Icon(Icons.arrow_forward, color: Colors.white),
              Icon(Icons.arrow_forward_ios, color: Colors.white, size: 10)
            ],
          ),
        )
      )
    );
    
    
  }

  Widget _sushiImage(){
    return Positioned(
      left: 50,
      child: Image(
        image: AssetImage('assets/sushi.png'),
      ),
    );
  }

  Widget _floatOption(){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 120
      ),
      padding: EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 10
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.remove, size: 30),
          Text('02', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          )),
          Icon(Icons.add, size: 30),
        ],
      ),
    );
  }

  Widget _options(){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            item(icon: Icon(Icons.star, color: Colors.yellow), name: Text('5.0', style: TextStyle(
              fontWeight: FontWeight.w700
            ))),
            item(icon: Icon(Icons.whatshot, color: Colors.orange), name: Text('57 Calories', style: TextStyle(
              fontWeight: FontWeight.w700
            ))),
            item(icon: Icon(Icons.timer, color: Colors.red,), name: Text('20-25 Min.', style: TextStyle(
              fontWeight: FontWeight.w700
            )))
        ],
      ),
    );
  }

  Widget item({Icon icon, Text name}){
    return Row(
      children: [
        icon, 
        name
      ],
    );
  }

  
}