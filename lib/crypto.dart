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
  'assets/images/crypto_home/pix_logo.png'
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
                          Text('Em breve o endereço da carteira.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          //child: const Text('DOAR PARA RAÇÃO'),
                          child: const Icon(Icons.copy),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2),
                          onPressed: () {
                            /* ... */
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
                      //leading: Icon(Icons.monetization_on),
                      leading: Icon(Icons.monetization_on),
                      title: Text('Doe Ethereum para o Mariguelinho'),
                      subtitle:
                          Text('0x209f457f3d996fe12f4b3B82667Cd1e1ccdd1C2C'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy),
                          onPressed: () async {
                            await Clipboard.setData(const ClipboardData(text: '0x209f457f3d996fe12f4b3B82667Cd1e1ccdd1C2C'));
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          //child: const Text('SUPÉRFULOS'),
                          child: const Icon(Icons.qr_code_2),
                          onPressed: () {
                            /* ... */
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
                          Text('Em breve o endereço da carteira.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2),
                          onPressed: () {
                            /* ... */
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
                          Text('Em breve o endereço da carteira.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2),
                          onPressed: () {
                            /* ... */
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
                          Text('Em breve o endereço da carteira.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2),
                          onPressed: () {
                            /* ... */
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
                          Text('Em breve o endereço da carteira.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2),
                          onPressed: () {
                            /* ... */
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
                          Text('Em breve o endereço da carteira.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Icon(Icons.copy),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Icon(Icons.qr_code_2),
                          onPressed: () {
                            /* ... */
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
