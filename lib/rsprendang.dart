import 'package:flutter/material.dart';

class ResepRendang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Rendang'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bahan-bahan:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('- 1 kg daging sapi\n- 10 buah cabai merah\n- 5 buah cabai rawit\n- 10 siung bawang merah\n- 5 siung bawang putih\n- 2 ruas lengkuas\n- 3 lembar daun jeruk\n- 2 batang serai\n- 1 bungkus santan kental\n- 1 sdm gula merah\n- 2 sdt garam\n- minyak goreng secukupnya'),
              SizedBox(height: 20),
              Text(
                'Langkah-langkah:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('1. Potong daging sapi sesuai selera.'),
              Text('2. Haluskan cabai merah, cabai rawit, bawang merah, bawang putih, dan lengkuas.'),
              Text('3. Tumis bumbu halus, daun jeruk, dan serai hingga harum.'),
              Text('4. Masukkan daging sapi, aduk hingga rata.'),
              Text('5. Tambahkan santan, gula merah, dan garam.'),
              Text('6. Masak dengan api kecil hingga daging empuk dan bumbu meresap.'),
              SizedBox(height: 20),
              Text(
                'Selamat mencoba!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
