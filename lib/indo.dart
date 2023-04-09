import 'package:flutter/material.dart';
import 'package:resep/home.dart';
import 'package:resep/rspdawet.dart';
import 'package:resep/rspklepon.dart';
import 'package:resep/rsprendang.dart';
import 'package:resep/rspdawet.dart';

class ResepIndo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Menu Indonesia'),
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
            title: 'Dawet',
            imageUrl: 'assets/dawet.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResepDawet()),
              );
            }, key: Key('mie'),
          ),
          RecipeCard(
            title: 'Klepon',
            imageUrl: 'assets/klepon.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KleponRecipePage()),
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