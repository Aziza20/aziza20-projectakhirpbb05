import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Transaction Display',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TransactionDisplay(),
    );
  }
}

class TransactionDisplay extends StatefulWidget {
  @override
  _TransactionDisplayState createState() => _TransactionDisplayState();
}

class _TransactionDisplayState extends State<TransactionDisplay> {
  String _itemName = 'Kiky';
  String _itemSize = '1';
  double _itemPrice = 185000;
  double _taxRate = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Display'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Barang:'),
          Text('$_itemName'),
          Text('Size:'),
          Text('$_itemSize'),
          Divider(),
          Text('Perhitungan pembayaran:'),
          Text('Harga Barang: \$${_itemPrice / 100}'),
          Text('PPN 10%: \$${(_itemPrice * _taxRate) / 100}'),
          Text('Total: \$${(_itemPrice + _itemPrice * _taxRate) / 100}'),
          Divider(),
          ElevatedButton(
            onPressed: () {
              // Implement your logic to proceed to checkout here
            },
            child: Text('Melanjutkan Pemesanan'),
          ),
        ],
      ),
    );
  }
}
