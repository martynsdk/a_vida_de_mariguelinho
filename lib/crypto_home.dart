import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'main.dart';

final List<String> cryptoImageList = [
  'assets/images/crypto_home/dogecoin_logo.png',
  'assets/images/crypto_home/shibainu_logo.png'
];


class CryptoHome extends StatelessWidget {
  const CryptoHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    //HERE
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),


    );

  }
}
