import 'package:flutter/material.dart';
import 'package:resep/add.dart';

class ResepShushi extends StatefulWidget {
  const ResepShushi({Key? key}) : super(key: key);

  @override
  _ResepShushi createState() => _ResepShushi();
}

class _ResepShushi extends State<ResepShushi> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(236, 236, 200, 200),
      appBar: AppBar(
        title: const Text('Resep Sushi'),
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
                      'assets/Shushi.png'),
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
                  Text('Nori (lembaran rumput laut kering)\n- Sushi Rice (beras ketan Jepang)\n- Air\n- Cuka beras\n- Cuka beras\n- Gula\n- Garam\n- Filling (misalnya irisan mentimun, wortel, salmon, atau avocado)\n- Bambu rolling mat\n-  Pisau tajam\n- Mangkuk besar\n- Sendok kayu'),
                  const SizedBox(height: 16),
                  const Text(
                    'Langkah-langkah',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('1. Cuci beras ketan Jepang dengan air hingga bersih, kemudian rendam dalam air selama 30 menit. Tiriskan air dan masak beras dengan 2 gelas air dalam panci tertutup dengan api sedang. Setelah mendidih, kecilkan api dan biarkan selama 10 menit. Matikan api dan biarkan selama 10 menit lagi untuk meresap.'),
                  Text('2. Campurkan 1/4 cangkir cuka beras, 2 sendok makan gula, dan 1 sendok teh garam dalam mangkuk kecil. Panaskan campuran di atas api kecil hingga gula dan garam larut. Setelah larut, biarkan dingin.'),
                  Text('3. Setelah nasi matang, tambahkan campuran cuka beras ke dalam nasi dan aduk rata. Biarkan nasi dingin selama beberapa menit.'),
                  Text('4. Ambil selembar nori dan letakkan di atas bambu rolling mat dengan sisi berbulu menghadap ke atas. Ambil sekitar 1/2 cangkir nasi dan letakkan di atas nori. Ratakan nasi dan tinggalkan sedikit ruang di ujung atas nori.'),
                  Text('5. Letakkan isian di atas nasi, jangan terlalu banyak sehingga sulit digulung.'),
                  Text('6. Angkat ujung bambu mat dekat Anda dan gulung nori dan isian ke atas hingga menutupi isian. Tekan roll dengan lembut untuk membuatnya rapat.'),
                  Text('7. Ulangi langkah 4-6 untuk sisa nori dan filling.'),
                  Text('8. Setelah selesai, potong sushi dengan pisau tajam menjadi irisan sekitar 2 cm. Bersihkan pisau dengan air setiap kali memotong sushi agar hasil potongan rapi dan bersih.'),
                  Text('9. Susun irisan sushi di atas piring dan nikmati bersama dengan kecap Jepang atau wasabi.'),
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
