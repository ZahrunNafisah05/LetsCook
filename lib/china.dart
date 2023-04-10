import 'package:flutter/material.dart';
import 'package:resep/home.dart';
import 'package:resep/rspbakpao.dart';


class ResepChina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Menu China'),
        backgroundColor: Color(0xFFFE939E),

      ),
      body: ListView(
        children: [
          RecipeCard(
            title: 'Bakpao',
            imageUrl: 'assets/Bakpao.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResepBakpao()),
              );
            }, key: Key('Sushi'),
          ),
          RecipeCard(
            title: 'Genmaicha',
            imageUrl: 'assets/Ganmaicha.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetailPage()),
              );
            }, key: Key('Genmaicha'),
          ),
          RecipeCard(
            title: 'Daifuku',
            imageUrl: 'assets/Daifuku.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetailPage()),
              );
            }, key: Key('Daifuku'),
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;

  const RecipeCard({
    required Key key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _selectedNavbar;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Resep'),
      ),
      body: Center(
        child: Text('Ini adalah halaman detail resep'),
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

  void _changeSelectedNavBar(int value) {
  }
}
