import 'package:flutter/material.dart';
import 'package:resep/home.dart';
import 'package:resep/profil.dart';

class FavoriteRecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      appBar: AppBar(
        title: Text('Resep Favorit'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            elevation: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image(
                    image: AssetImage(
                      'assets/klepon.png'), 
                      width: 120,
                      height: 120,
                )
              ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Resep Klepon',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'oleh John Doe',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Resep ini sangat mudah dan enak, cocok untuk acara keluarga',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    bottomNavigationBar: Container(
        height: 65.0,
        color: Color.fromARGB(255, 255, 118, 156),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(right:15.0, left: 15.0),
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 118, 156), 
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child:
                  IconButton(icon: new Icon(Icons.home, 
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 25.0,),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: ((context)=>Home())));
                  },),
            ),

            Container(
                margin: const EdgeInsets.only(right:15.0, left: 15.0),
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 118, 156), 
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: 
                  IconButton(icon: new Icon(Icons.favorite, 
                  color: Color.fromARGB(255, 251, 201, 232),
                  size: 25.0,),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: ((context)=>FavoriteRecipesPage())));
                  },),
            ),

            Container(
                margin: const EdgeInsets.only(right:15.0, left: 15.0),
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 118, 156), 
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: 
                  IconButton(icon: new Icon(Icons.person, 
                  color: Color.fromARGB(255, 251, 201, 232),
                  size: 25.0,),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: ((context)=>AccountPage())));
                  },),
            ),

          ],
        ),
      ),
    );
  }
}
