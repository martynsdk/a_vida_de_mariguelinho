import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'main.dart';

final List<String> cryptoImageList = [
  'assets/images/crypto_home/dogecoin_logo.png',
  'assets/images/crypto_home/shibainu_logo.png'
];

class CryptoHome extends StatefulWidget {
  const CryptoHome({Key? key, required this.title}) : super(key: key);
  final String title;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const CryptoHome(title: 'Doe cripto'),
    );
  }
  @override
  _CryptoHome createState() => _CryptoHome();
}

class _CryptoHome extends State<CryptoHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );

  }
}
