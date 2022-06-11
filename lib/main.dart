import 'package:a_vida_de_mariguelinho/about_name.dart';
import 'package:a_vida_de_mariguelinho/marighellos_pictures.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'crypto_home.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A vida de Mariguelinho',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const MyHomePage(title: 'A vida de Mariguelinho'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/mariguelinho_main_picture.jpg',
      'assets/images/mariguelinho1.jpg',
      'assets/images/marighelinho2.jpg',
      'assets/images/marighelinho3.jpg',
      'assets/images/marighelinho4.jpg',
      'assets/images/marighelinho5.jpg',
      'assets/images/marighelinho6.jpg',
      'assets/images/marighelinho7.jpg',
      'assets/images/marighelinho8.jpg',
      'assets/images/marighelinho9.jpg',
      'assets/images/marighelinho10.jpg',
      'assets/images/marighelinho11.jpg',
      'assets/images/marighelinho12.jpg',
      'assets/images/marighelinho13.jpg',
      'assets/images/marighelinho14.jpg',
      'assets/images/marighelinho15.jpg'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme:
        const TextTheme(
          headline1: TextStyle(color: Colors.redAccent),
          headline2: TextStyle(color: Colors.redAccent),
          bodyText2: TextStyle(color: Colors.redAccent),
          subtitle1: TextStyle(color: Colors.redAccent),
        ),
      ),
    home: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Quantidade de vezes que o botão foi pressionado:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.all(10.0),
                child: Image.asset(imageList[0], scale: 1.0, fit: BoxFit.fill),
              ),
              Container(
                //height: MediaQuery.of(context).size.height,
                alignment: Alignment.topCenter,
                height: 300,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageList[1]),
                        scale: 1.0,
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15)),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: CarouselSlider.builder(
                  itemCount: imageList.length,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 300,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    reverse: false,
                    aspectRatio: 5.0,
                  ),
                  //a
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
                            imageList[i],
                            //width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                            scale: 1.0,
                            //fit: BoxFit.contain
                          ),
                        ),
                      ),
                      onTap: () {
                        var url = imageList[i];
                        //print(url.toString());
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Text('Página Principal'),
            ),
            ListTile(
              title: const Text('O Nome do Gato'),
              leading: const Icon(Icons.favorite),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //return const AboutName(title: 'O Nome do Gato');
                  return AboutName();
                }));
                // Update the state of the app.
                // ...
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: const Text('Fotinhas'),
              leading: const Icon(Icons.photo_album_rounded),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MarighellosPictures(title: 'Terceira Página');
                }));
                // Update the state of the app.
                // ...
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: const Text('Doe cripto'),
              leading: const Icon(Icons.wallet_membership),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CryptoHome(title: 'Doe cripto');
                }));
                // Update the state of the app.
                // ...
              },
              hoverColor: Colors.redAccent,
            ),
          ],
        ),
      ),

      floatingActionButton: AvatarGlow(
        glowColor: Theme.of(context).primaryColor,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 3000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: "As flores são bonitas em qualquer lugar do mundo, muita gente tem forma mas não tem conteúdo.",
          child: const Icon(Icons.add),
        ),
      ),

      //floatingActionButton: FloatingActionButton(
       // onPressed: _incrementCounter,
        //tooltip: 'Incrementa',
        //child: const Icon(Icons.add),
      //),
    ),
    );
  }
}
