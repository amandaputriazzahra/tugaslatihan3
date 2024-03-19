import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Menonaktifkan leading widget
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              Text(
                'Penuhi Lindungi',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Color(0xFF24ACDE),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Entering a Publish Space?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Stay alert to stay safe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, -3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.expand_more,
                              color: Colors.black,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Check-In Preference',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Action saat tombol ditekan
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 229, 243, 254),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.center_focus_strong,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Check-In',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      buildGridItem('Covid19 \nVaccine', 'assets/vaccine.jpg'),
                      buildGridItem(
                          'Covid19 \nTest Result', 'assets/testresults.jpg'),
                      buildGridItem('EHAC \n', 'assets/ehac.jpg'),
                      buildGridItem(
                          'Travel \nRegulations', 'assets/travel.jpg'),
                      buildGridItem(
                          'Telemedicine \n', 'assets/telemedicine.jpg',
                          alignment: Alignment.topCenter),
                      buildGridItem(
                          'Healthcare \nFacility', 'assets/healthcare.jpg',
                          alignment: Alignment.topCenter),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 29,
                right: 24,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/scan.jpg',
                        width: 120,
                        height: 115,
                      ),
                      Positioned(
                        top: 1,
                        right: 15,
                        child: Icon(
                          Icons.info,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
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
      padding: EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 100,
                height: 100,
              ),
            ],
          ),
          SizedBox(height: 4),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
