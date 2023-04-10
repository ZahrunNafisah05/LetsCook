import 'package:flutter/material.dart';
import 'package:resep/logout.dart';
import 'package:resep/home.dart';
import 'package:resep/favorit.dart';
import 'package:resep/profil.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1543269665-cbf427effbad'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1543269665-cbf427effbad'),
                ),
                SizedBox(height: 10),
                Text(
                  'Icaa@gmail.com',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color:  Color.fromARGB(255, 255, 118, 156))
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite, size: 30, color: Color.fromARGB(255, 255, 118, 156),),
                      SizedBox(width: 10),
                      Text(
                        'Favorit',
                        style: TextStyle(fontSize: 20, color:  Color.fromARGB(255, 255, 118, 156)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 118, 156),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 150.0, vertical: 25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                  
                      Navigator.push(context, 
                      MaterialPageRoute(builder: ((context)=>Logout())));
                    
                  },
                ),
                ],
              ),
            ),
          ),
        ],
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
            ),])
    ));
  }
}
