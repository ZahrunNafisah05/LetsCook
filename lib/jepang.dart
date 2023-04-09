import 'package:flutter/material.dart';
import 'package:resep/home.dart';


class RecipeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Makanan'),
        backgroundColor: Color(0xFFFE939E),

      ),
      body: ListView(
        children: [
          RecipeCard(
            title: 'Rendang',
            imageUrl: 'assets/rendang.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetailPage()),
              );
            }, key: Key('nasi'),
          ),
          RecipeCard(
            title: 'Mie Goreng',
            imageUrl: 'https://i.imgur.com/9gZoJ44.jpg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetailPage()),
              );
            }, key: Key('mie'),
          ),
          RecipeCard(
            title: 'Sate Ayam',
            imageUrl: 'https://i.imgur.com/BzcvX9k.jpg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetailPage()),
              );
            }, key: Key('ayam'),
          ),
          RecipeCard(
            title: 'Soto Ayam',
            imageUrl: 'https://i.imgur.com/cYpnyPd.jpg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetailPage()),
              );
            }, key: Key('ayam'),
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
