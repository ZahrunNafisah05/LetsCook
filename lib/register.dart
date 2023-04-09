
import 'package:flutter/material.dart';
import 'package:resep/home.dart';
import 'package:resep/login_page.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<register>  {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
       key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Image(
              image: AssetImage(
              'assets/login.png'), ),
              
              Text(
              "Welcome back you’ve been missed!",
              style: TextStyle(
              color: Color.fromARGB(255, 255, 118, 156),
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
                ),
              ),
              
              Padding(
                padding: 
                const EdgeInsets.only(top: 5.0, right: 25.0, left: 25.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "Masukkan Username Anda",
                    labelText: "Username",
                    icon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Username tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: 
                const EdgeInsets.only(top: 5.0, right: 25.0, left: 25.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "Masukkan Email Anda",
                    labelText: "Email",
                    icon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, bottom: 70.0, right: 25.0, left: 25.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "Password",
                    icon: Icon(Icons.key),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              
              ElevatedButton(
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
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
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: ((context)=>login())));
                  }
                },
              ),

              Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: ((context)=>login())));
                },
                child: const Text("Already have an Account? Login"),
                )
              ),
          ],
          ),
        ),
      )
      );
  }
}