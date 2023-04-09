import 'package:flutter/material.dart';
import 'package:div/div.dart';
import 'package:resep/indo.dart';
import 'package:resep/jepang.dart';
import 'package:resep/login_page.dart';


void main() {
  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {

@override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }
    @override 
    Widget build(BuildContext context){

      return Scaffold(
        backgroundColor: Color.fromARGB(236, 236, 200, 200),
        body: Container(
          child: Column (
          children: <Widget> [ 
          Padding(
            padding:const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
            child: Text(
              "All Categories",
              style: TextStyle(
              color: Color.fromARGB(255, 255, 118, 156),
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
                ),
              ),
            ),

            Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0,),
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                child: Div.row([

                    Padding(
                    padding:const EdgeInsets.only(top: 50.0, bottom: 50.0),
                    child: IconButton(
                      icon: Image.asset('assets/indo.png'),
                      iconSize: 180,
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        ResepIndo()));
                      }),
                    )
                    ),

                    Padding(
                    padding:const EdgeInsets.only(top: 50.0, bottom: 50.0, ),
                    child: IconButton(
                      icon: Image.asset('assets/jepang.png'),
                      iconSize: 180,
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        RecipeListPage()));
                      }),
                    )
                    ),
                ])
            ),

            Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0,),
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                child: Div.row([

                    Padding(
                    padding:const EdgeInsets.only(top: 50.0, bottom: 50.0),
                    child: IconButton(
                      icon: Image.asset('assets/thailand.png'),
                      iconSize: 180,
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        RecipeListPage()));
                      }),
                    )
                    ),

                    Padding(
                    padding:const EdgeInsets.only(top: 50.0, bottom: 50.0, left: 5.0),
                    child: IconButton(
                      icon: Image.asset('assets/china.png'),
                      iconSize: 180,
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        RecipeListPage()));
                      }),
                    )
                    ),
                ])
            ),


          ],
          )  
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Color.fromARGB(255, 255, 118, 156),
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
     