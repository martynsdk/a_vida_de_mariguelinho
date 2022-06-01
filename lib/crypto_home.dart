import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class CryptoHome extends StatelessWidget {
  const CryptoHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    final List<String> cryptoImageList = [
      'assets/images/crypto_home/dogecoin_logo.png',
      'assets/images/crypto_home/shibainu_logo.png'
      ];


    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Ajude doando qualquer quantia em criptomoedas:',
              ),
              Text(
                //'$_counter',
                'A',
                style: Theme.of(context).textTheme.headline4,
              ),

              Container(
                margin: const EdgeInsets.all(15),
                child: CarouselSlider.builder(
                  itemCount: cryptoImageList.length,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 300,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    reverse: false,
                    aspectRatio: 5.0,
                  ),
                  itemBuilder: (context, i, id) {
                    //for onTap to redirect to another screen
                    return GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.white,
                            )),
                        //ClipRRect for image border radius
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            cryptoImageList[i],
                            //width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                            scale: 1.0,
                            //fit: BoxFit.contain
                          ),
                        ),
                      ),
                      onTap: () {
                        var url = cryptoImageList[i];
                        //print(url.toString());
                      },
                    );
                  },
                ),
              ),





              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyHomePage(title: 'A vida de Mariguelinho');
                  }));
                },
                child: const Text('Voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
