import 'package:flutter/material.dart';

class ResepDawet extends StatefulWidget {
  const ResepDawet ({Key? key}) : super(key: key);

  @override
  _ResepDawet createState() => _ResepDawet();
}

class _ResepDawet extends State<ResepDawet> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      appBar: AppBar(
        title: const Text('Resep Dawet'),
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
                      'assets/dawet.png'),
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
                  Text('- 200 gram tepung ketan\n- 50 gram tepung beras\n- 700 ml air\n- 250 ml santan kental\n- 200 gram gula merah, disisir\n- 1/2 sdt garam\n- 1 lembar daun pandan\n- es serut secukupnya'),                  const SizedBox(height: 16),
                  const Text(
                    'Langkah-langkah',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('1. Campurkan tepung ketan, tepung beras, dan air.'),
                  Text('2. Aduk rata hingga tidak ada yang menggumpal.'),
                  Text('3. Tuang adonan ke dalam panci.'),
                  Text('4. Masukkan santan, gula merah, garam, dan daun pandan.'),
                  Text('5. Masak dengan api sedang sambil terus diaduk hingga mengental dan matang.'),
                  Text('6. Sajikan dawet dengan es serut, santan dan cairan gula merah'),
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
