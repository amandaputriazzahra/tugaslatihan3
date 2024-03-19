import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "latihan 1",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pemrograman Mobile 3"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      "name": "Amanda Putri Azzahra",
      "hobby": " Bersepeda",
      "image": "assets/citra.jpeg"
    },
    {
      "name": "Alisha Almayhyra",
      "hobby": " Ngemil",
      "image": "assets/diana.jpeg"
    },
    {"name": "Valentino", "hobby": " Futsal", "image": "assets/andi.jpeg"},
    {"name": "Raihan Zaky", "hobby": "Basket", "image": "assets/budi.jpeg"},
    // Add more data here as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final person = data[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0), // Sudut siku
          ),
          child: ListTile(
            onTap: () {},
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage(person["image"]), // Use person["image"] here
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(person["name"]),
            subtitle: Text(person["hobby"]),
            tileColor: Colors.white70,
          ),
        );
      },
    );
  }
}
