import 'package:flutter/material.dart';
import 'package:resep/add.dart';

class ResepRendang extends StatefulWidget {
  const ResepRendang({Key? key}) : super(key: key);

  @override
  _ResepRendang createState() => _ResepRendang();
}

class _ResepRendang extends State<ResepRendang> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      appBar: AppBar(
        title: const Text('Resep Rendang'),
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
                      'assets/rendang.png'),
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
                  Text('- 1 kg daging sapi\n- 10 buah cabai merah\n- 5 buah cabai rawit\n- 10 siung bawang merah\n- 5 siung bawang putih\n- 2 ruas lengkuas\n- 3 lembar daun jeruk\n- 2 batang serai\n- 1 bungkus santan kental\n- 1 sdm gula merah\n- 2 sdt garam\n- minyak goreng secukupnya'),
                  const SizedBox(height: 16),
                  const Text(
                    'Langkah-langkah',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('1. Potong daging sapi sesuai selera.'),
                  Text('2. Haluskan cabai merah, cabai rawit, bawang merah, bawang putih, dan lengkuas.'),
                  Text('3. Tumis bumbu halus, daun jeruk, dan serai hingga harum.'),
                  Text('4. Masukkan daging sapi, aduk hingga rata.'),
                  Text('5. Tambahkan santan, gula merah, dan garam.'),
                  Text('6. Masak dengan api kecil hingga daging empuk dan bumbu meresap.'),
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
        child: Column( 
          children: [
            Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Color(0xFFFE939E),),
           IconButton(icon: new Icon(Icons.plus_one_rounded, 
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 25.0,),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: ((context)=>OrderPage())));
                  },),

          ]
        ),
      ),
    );
  }
}
