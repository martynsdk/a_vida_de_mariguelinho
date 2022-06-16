import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/services.dart';

final List<String> cryptoImageList = [
  'assets/images/crypto_home/dogecoin_logo.png',
  'assets/images/crypto_home/shibainu_logo.png',
  'assets/images/crypto_home/bitcoin_logo.png',
  'assets/images/crypto_home/ethereum_logo.png',
  'assets/images/crypto_home/cardano_logo.png',
  'assets/images/crypto_home/usdcoin_logo.png',
  'assets/images/crypto_home/pix_logo.png',
  'assets/images/crypto_home/dogecoin_qrcode.png',
  'assets/images/crypto_home/shibainu_qrcode.png',
  'assets/images/crypto_home/bitcoin_qrcode.png',
  'assets/images/crypto_home/ethereum_qrcode.png',
  'assets/images/crypto_home/cardano_qrcode.png',
  'assets/images/crypto_home/usdcoin_qrcode.png',
  'assets/images/crypto_home/pix_qrcode.png',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(cryptoImageList[2], fit: BoxFit.fitHeight),
                      height: 300,
                    ),
                    const ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Doe Bitcoins para o Mariguelinho'),
                      subtitle:
                          Text('Carteira: 3Gbfxu3FUvi4dTLu2roSRvg8ZJXzNyEcQT'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy, size: 25),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: '3Gbfxu3FUvi4dTLu2roSRvg8ZJXzNyEcQT'));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[9], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(cryptoImageList[3], fit: BoxFit.fitHeight),
                      height: 300,
                    ),
                    const ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Doe Ethereum para o Mariguelinho'),
                      subtitle:
                          Text('Carteira: 0x209f457f3d996fe12f4b3B82667Cd1e1ccdd1C2C'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy, size: 25),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: '0x209f457f3d996fe12f4b3B82667Cd1e1ccdd1C2C'));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[10], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(cryptoImageList[0], fit: BoxFit.fitHeight),
                      height: 300,
                    ),
                    const ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Doe DogeCoin para o Mariguelinho'),
                      subtitle:
                          Text('Carteira: DR6gZSRvKmKNpREMnUVTm5GF6ZAyCcw3YM'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy, size: 25),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: 'DR6gZSRvKmKNpREMnUVTm5GF6ZAyCcw3YM'));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[7], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(cryptoImageList[1], fit: BoxFit.fitHeight),
                      height: 300,
                    ),
                    const ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Doe ShibaInu para o Mariguelinho'),
                      subtitle:
                          Text('Carteira: 0x457E9D3f78F396C98EC3223a42585490465E8172'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy, size: 25),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: '0x457E9D3f78F396C98EC3223a42585490465E8172'));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[8], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(cryptoImageList[5], fit: BoxFit.fitHeight),
                      height: 300,
                    ),
                    const ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Doe USD Coin para o Mariguelinho'),
                      subtitle:
                          Text('Carteira: 0xD2CD120D1D5703c6f3AFe4ED2b92B969b2B593C9'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy, size: 25),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: '0xD2CD120D1D5703c6f3AFe4ED2b92B969b2B593C9'));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[12], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(cryptoImageList[4], fit: BoxFit.fitHeight),
                      height: 300,
                    ),
                    const ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Doe Cardano para o Mariguelinho'),
                      subtitle:
                          Text('Carteira: addr1vyhl9t3lvn5jmp5hd6vqektqal4yvurcs39mwjgq6lhdwfcgytgff'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy, size: 25),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: 'addr1vyhl9t3lvn5jmp5hd6vqektqal4yvurcs39mwjgq6lhdwfcgytgff'));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[11], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(cryptoImageList[6], fit: BoxFit.fitHeight),
                      height: 300,
                    ),
                    const ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Faça um Pix para o Mariguelinho.'),
                      subtitle:
                          Text('https://pt.wikipedia.org/wiki/Fascismo'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[13], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2, size: 25),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  child: GestureDetector(
                                    child: Hero(
                                      tag: 'imageHero',
                                      child: Image.asset(cryptoImageList[13], fit: BoxFit.fitHeight),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
