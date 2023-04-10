import 'package:flutter/material.dart';

class ResepBakpao extends StatefulWidget {
  const ResepBakpao({Key? key}) : super(key: key);

  @override
  _ResepBakpao createState() => _ResepBakpao();
}

class _ResepBakpao extends State<ResepBakpao> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      appBar: AppBar(
        title: const Text('Resep Bakpao'),
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
                      'assets/Bakpao.png'),
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
                  Text('- Tepung terigu serbaguna'),
                  Text('- Ragi instan'),
                  Text('- Gula pasir'),
                  Text('- Garam'),
                  Text('- Minyak sayur'),
                  Text('- Air'),
                  Text('- Isian (misalnya daging babi cincang atau jamur shiitake)'),
                  Text('- Wadah bulat untuk membentuk adonan'),
                  Text('- Kain serbet bersih'),
                  const SizedBox(height: 16),
                  const Text(
                    'Langkah-langkah',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('1. Campurkan 1 sendok makan ragi instan dengan 1/4 cangkir air hangat. Aduk rata dan biarkan selama 10 menit hingga berbuih.'),
                  Text('2. Campurkan 3 cangkir tepung terigu serbaguna, 2 sendok makan gula pasir, dan 1/2 sendok teh garam dalam mangkuk besar.'),
                  Text('3. Tambahkan campuran ragi instan ke dalam mangkuk, lalu tambahkan 1 cangkir air sedikit-sedikit sambil diaduk hingga adonan tercampur rata. Tuangkan 1 sendok makan minyak sayur dan aduk rata.'),
                  Text('4. Uleni adonan selama 10 menit hingga elastis. Tutup adonan dengan kain serbet dan biarkan selama 30 menit hingga mengembang dua kali lipat.'),
                  Text('5. Potong adonan menjadi 16 bagian dan bulatkan masing-masing menjadi bola.'),
                  Text('6. Giling bola adonan menggunakan rolling pin hingga menjadi lingkaran dengan ketebalan 1/4 inci. Letakkan sejumput isian di tengah adonan dan lipat adonan menjadi setengah lingkaran.'),
                  Text('7. Letakkan bakpao yang sudah dibentuk di atas kertas roti dan biarkan selama 10 menit hingga mengembang kembali.'),
                  Text('8. Siapkan panci bertingkat dan letakkan air di bagian bawah. Letakkan lembaran kain serbet di setiap tingkat untuk menghindari bakpao lengket. Panaskan air hingga mendidih.'),
                  Text('9. Letakkan bakpao di atas kain serbet pada setiap tingkat panci. Tutup panci dengan penutup dan kukus selama 15-20 menit hingga matang. '),
                  Text('10. Angkat bakpao dari panci dan sajikan'),
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
