import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Color.fromRGBO(0, 171, 20, 1),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gojek',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Favorite',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol "Edit" ditekan
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(0, 171, 20, 1)),
                        side: MaterialStateProperty.all<BorderSide>(BorderSide(
                            color: const Color.fromRGBO(0, 171, 20, 1),
                            width: 1.5)),
                      ),
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildGridItem('GoRide', 'assets/goride.jpg'),
                  buildGridItem('GoCar', 'assets/gocar.jpg'),
                  buildGridItem('GoFood', 'assets/gofood.jpg'),
                  buildGridItem('GoSend', 'assets/gosend.jpg'),
                  buildGridItem('GoMart', 'assets/gomart.jpg',
                      alignment: Alignment.topCenter),
                  buildGridItem('GoPulsa', 'assets/gopulsa.jpg',
                      alignment: Alignment.topCenter),
                  buildGridItem('Check In', 'assets/checkin.jpg',
                      alignment: Alignment.topCenter),
                ],
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
              width: 70,
              height: 70,
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
