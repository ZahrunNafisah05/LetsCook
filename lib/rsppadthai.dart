import 'package:flutter/material.dart';

class ResepPadThai extends StatefulWidget {
  const ResepPadThai({Key? key}) : super(key: key);

  @override
  _ResepPadThai createState() => _ResepPadThai();
}

class _ResepPadThai extends State<ResepPadThai> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      appBar: AppBar(
        title: const Text('Resep Pad Thai'),
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
                      'assets/PadThai.png'),
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
                  Text('- Mie beras'),
                  Text('- Udang (boleh dihilangkan jika tidak suka seafood)'),
                  Text('- Tahu'),
                  Text('- Kacang tanah (goreng tanpa kulit dan hancurkan)'),
                  Text('- Bawang putih'),
                  Text('- Bawang merah'),
                  Text('- Cabai merah'),
                  Text('- Telur ayam'),
                  Text('- Kecap manis'),
                  Text('- Gula aren'),
                  Text('- Kecap asin'),
                  Text('- Jeruk nipis'),
                  Text('- Minyak sayur'),
                  Text('- Air'),
                  const SizedBox(height: 16),
                  const Text(
                    'Langkah-langkah',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('1. Rendam mie beras dalam air dingin selama 30 menit, tiriskan airnya dan sisihkan.'),
                  Text('2. Iris tahu menjadi dadu kecil, potong bawang putih, bawang merah, dan cabai merah kecil-kecil.'),
                  Text('3. Panaskan wajan dengan sedikit minyak sayur, tumis bawang putih, bawang merah, dan cabai merah hingga harum.'),
                  Text('4. Masukkan udang dan tumis hingga udang berubah warna, kemudian masukkan tahu.'),
                  Text('5. Tambahkan sedikit air, gula aren, kecap manis, dan kecap asin ke dalam wajan. Aduk rata dan biarkan hingga tahu matang dan air menyusut.'),
                  Text('6. Geser semua bahan di wajan ke sisi wajan dan pecahkan telur di sisi yang kosong. Aduk telur hingga tercampur rata dengan bahan lainnya.'),
                  Text('7. Tambahkan mie beras ke dalam wajan, aduk hingga rata dengan bahan lainnya.'),
                  Text('8. Tambahkan kacang tanah yang sudah digoreng dan hancurkan, aduk rata.'),
                  Text('9. Sajikan dengan irisan jeruk nipis dan taburan daun bawang.'),
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
