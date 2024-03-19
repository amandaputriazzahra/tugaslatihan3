import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TwitterProfile(),
    );
  }
}

class TwitterProfile extends StatelessWidget {
  void _followProfile(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda telah mengikuti Akun UPN Veteran Jawa Timur.'),
      ),
    );
  }

  void _translateBio(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Bio sedang diterjemahkan...'),
      ),
    );
    // Tambahkan logika untuk menerjemahkan bio di sini
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Twitter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Image.asset(
                'assets/sampul.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              right: 0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.only(
                          right: 20), // Menambahkan padding ke kanan
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black
                            .withOpacity(0.5), // Latar belakang transparan
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black
                                .withOpacity(0.5), // Latar belakang transparan
                          ),
                          child: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              // Tambahkan aksi saat ikon search ditekan
                            },
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                            width:
                                8), // Memberikan jarak antara ikon search dan menu
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black
                                .withOpacity(0.5), // Latar belakang transparan
                          ),
                          child: IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              // Tambahkan aksi saat ikon titik tiga ditekan
                            },
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                ),
                child: CircleAvatar(
                  radius: 43,
                  backgroundImage: AssetImage(
                    'assets/profil.jpg',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 212, left: 20), // Menyesuaikan jarak ke bawah teks
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UPN Veteran Jawa Timur',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2), // Menambahkan jarak antara teks
                  Text(
                    '@upnvjt_official',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 285, left: 20, right: 20),
              child: Text(
                'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 165,
              right: 20, // Menempatkan tombol di sebelah kanan
              child: ElevatedButton(
                onPressed: () {
                  _followProfile(context);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _translateBio(
                    context); // Panggil fungsi _translateBio ketika teks "Translate Bio" diklik
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 370,
                    left: 20,
                    right: 20), // Sesuaikan posisi teks dengan bio
                child: Text(
                  'Translate Bio',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue, // Ganti warna teks menjadi biru
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
