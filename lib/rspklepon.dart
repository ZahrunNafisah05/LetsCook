import 'package:flutter/material.dart';

class KleponRecipePage extends StatefulWidget {
  const KleponRecipePage({Key? key}) : super(key: key);

  @override
  _KleponRecipePageState createState() => _KleponRecipePageState();
}

class _KleponRecipePageState extends State<KleponRecipePage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      appBar: AppBar(
        title: const Text('Resep Klepon'),
        backgroundColor: Color(0xFFFE939E),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'assets/klepon.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bahan-bahan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('- 250 gram tepung ketan'),
                  Text('- 1/2 sendok teh garam'),
                  Text('- 1 sendok makan air daun pandan'),
                  Text('- 150 ml air matang'),
                  Text('- 150 gram gula merah, serut halus'),
                  Text('- 100 gram kelapa parut kasar, kukus'),
                  const SizedBox(height: 16),
                  const Text(
                    'Langkah-langkah',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('1. Campurkan tepung ketan, garam, air daun pandan, dan air matang. Aduk rata.'),
                  Text('2. Ambil sedikit adonan, bulatkan, dan pipihkan.'),
                  Text('3. Beri gula merah serut di tengahnya, bulatkan kembali.'),
                  Text('4. Rebus air dalam panci, masukkan bola ketan. Masak hingga bola ketan mengapung.'),
                  Text('5. Tiriskan bola ketan, gulingkan dalam kelapa parut.'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Color(0xFFFE939E),
        ),
      ),
    );
  }
}
