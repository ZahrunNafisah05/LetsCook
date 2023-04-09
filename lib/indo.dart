import 'package:flutter/material.dart';
import 'package:resep/home.dart';
import 'package:resep/rsprendang.dart';

class ResepIndo extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => ResepRendang()),
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

class ResepRendang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Resep'),
      ),
      body: Center(
        child: Text('Ini adalah halaman detail resep'),
      ),
    );
  }
}

class RecipeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Resep'),
      ),
      body: Center(
        child: Text('Ini adalah halaman detail resep'),
      ),
    );
  }
}
