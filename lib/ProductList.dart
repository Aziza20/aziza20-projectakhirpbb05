import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AZZASA.ID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homestore(title: 'AZZASA.ID'),
    );
  }
}

class Homestore extends StatefulWidget {
  Homestore({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ListProduct createState() => ListProduct();
}

class ListProduct extends State<Homestore> {
  List<Map<String, dynamic>> products = [
    {"Nama": "Kiky", 
     "Harga": "Rp. 185.000",
     "image": "assets/images/kiky.jpg"},
    {
      "Nama": "Faires",
      "Harga": "Rp. 150.000",
      "image": "assets/images/Faires.jpeg"
    },
    {
      "Nama": "Force",
      "Harga": "Rp. 285.000",
      "image": "assets/images/Air Force.jpeg"
    },
    {
      "Nama": "Nike",
      "Harga": "Rp. 386.000",
      "image": "assets/images/Nike.jpg"
    },
  ];

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(products[index]['image']),
                Text(products[index]['name']),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
