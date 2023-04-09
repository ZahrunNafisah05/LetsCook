import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resep/login_page.dart';
import 'package:resep/register.dart';



class Logout extends StatefulWidget{

  _Logoutpage createState() => _Logoutpage();
}

class _Logoutpage extends State<Logout>{

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login()),

      );
    });
  }
  
  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Text("You're Logout !!!",
              style: TextStyle(
                color: Color.fromARGB(220, 220, 77, 93),
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),

            SizedBox(height: 24.0,),
          ],
        ),
      ),
    );
  }
}
  
