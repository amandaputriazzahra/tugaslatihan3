import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: TabBar(
              labelColor: Colors.white, // Warna teks tab aktif
              unselectedLabelColor:
                  Colors.white.withOpacity(0.5), // Warna teks tab tidak aktif
              indicatorSize: TabBarIndicatorSize
                  .tab, // Ukuran garis bawah sesuai dengan panjang tab
              indicatorWeight: 3, // Ketebalan garis bawah
              indicatorColor: Colors.white, // Warna garis bawah
              tabs: [
                Tab(text: "For You"),
                Tab(text: "Following"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Isi Tab 1
              Scaffold(
                body: Center(
                  child: ListView(
                    padding: const EdgeInsets.all(20),
                    children: [
                      // Item 1 dengan logo Flutter
                      ListTile(
                        leading: FlutterLogo(), // Logo Flutter di sebelah kiri
                        title: Text('Data Ke 0'), // Teks item
                      ),
                      Divider(
                        height: 10,
                      ),
                      // Item 2 dengan logo Flutter
                      ListTile(
                        leading: FlutterLogo(), // Logo Flutter di sebelah kiri
                        title: Text('Data Ke 1'), // Teks item
                      ),
                      Divider(
                        height: 10,
                      ),
                      // Item 3 dengan logo Flutter
                      ListTile(
                        leading: FlutterLogo(), // Logo Flutter di sebelah kiri
                        title: Text('Data Ke 2'), // Teks item
                      ),
                      Divider(
                        height: 10,
                      ),
                      // Item 4 dengan logo Flutter
                      ListTile(
                        leading: FlutterLogo(), // Logo Flutter di sebelah kiri
                        title: Text('Data Ke 3'), // Teks item
                      ),
                      Divider(
                        height: 10,
                      ),
                      // Item 5 dengan logo Flutter
                      ListTile(
                        leading: FlutterLogo(), // Logo Flutter di sebelah kiri
                        title: Text('Data Ke 4'), // Teks item
                      ),
                      Divider(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),

              // Isi Tab 2
              Scaffold(
                body: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    buildGridItem('', 'assets/owl.jpg'),
                    buildGridItem('', 'assets/owl.jpg'),
                    buildGridItem('', 'assets/owl.jpg',
                        alignment: Alignment.topCenter),
                    buildGridItem('', 'assets/owl.jpg',
                        alignment: Alignment.topCenter),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(String title, String imagePath,
      {Alignment alignment = Alignment.center}) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: alignment,
            child: Image.asset(
              imagePath,
              width: 130,
              height: 130,
            ),
          ),
          SizedBox(height: 4),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
