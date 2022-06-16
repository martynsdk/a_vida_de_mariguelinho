import 'package:a_vida_de_mariguelinho/ask_the_cat.dart';
import 'package:a_vida_de_mariguelinho/marighellos_pictures.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'crypto.dart';
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
        primaryColor: Colors.redAccent,
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
      'assets/images/marighelinho15.jpg',
      'assets/images/marighelinho16.jpg',
      'assets/images/marighelinho17.jpg',
      'assets/images/marighelinho18.jpg',
      'assets/images/marighelinho19.jpg',
      'assets/images/marighelinho20.jpg',
      'assets/images/marighelinho21.jpg',
      'assets/images/marighelinho22.jpg',
      'assets/images/marighelinho23.jpg',
      'assets/images/marighelinho24.jpg',
      'assets/images/marighelinho25.jpg',
      'assets/images/marighelinho26.jpg',
      'assets/images/marighelinho27.jpg',
      'assets/images/marighelinho28.jpg',
      'assets/images/marighelinho29.jpg',
      'assets/images/marighelinho30.jpg',
      'assets/images/marighelinho31.jpg',
      'assets/images/marighelinho32.jpg',
      'assets/images/marighelinho33.jpg',
      'assets/images/marighelinho34.jpg',
      'assets/images/marighelinho35.jpg',
      'assets/images/marighelinho36.jpg',
      'assets/images/marighelinho37.jpg',
      'assets/images/marighelinho38.jpg',
      'assets/images/marighelinho39.jpg',
      'assets/images/marighelinho40.jpg',
      'assets/images/marighelinho41.jpg',
      'assets/images/marighelinho42.jpg',
      'assets/images/marighelinho43.jpg',
      'assets/images/marighelinho44.jpg',
      'assets/images/marighelinho45.jpg',
      'assets/images/marighelinho46.jpg',
      'assets/images/marighelinho47.jpg',
      'assets/images/marighelinho48.jpg',
      'assets/images/marighelinho49.jpg',
      'assets/images/marighelinho50.jpg',
      'assets/images/marighelinho51.jpg',
      'assets/images/marighelinho52.jpg',
      'assets/images/marighelinho53.jpg',
    ];




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(imageList[0], fit: BoxFit.fill),
                    ),


                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('O gato mais doidão'),
                      subtitle:
                      Text('Incríveis peripécias e muito sono.'),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('CLIQUE AQUI PARA NADA'),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('AQUI TAMBÉM'),
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
                margin: const EdgeInsets.all(15),
                child: CarouselSlider.builder(
                  itemCount: imageList.length,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    //height: 300,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    reverse: false,
                    aspectRatio: 2.0,
                  ),
                  //abb
                  itemBuilder: (context, i, id) {
                    //for onTap to redirect to another screen
                    return GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        //ClipRRect for image border radius
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imageList[i],
                            fit: BoxFit.fitHeight,
                            scale: 1.0
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.topCenter,
                //height: 300,
                margin: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(imageList[1],fit: BoxFit.fitHeight),
                  )
              ),

              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Mariguelinho'),
                      subtitle:
                      Text('O que você faria se soubesse que não iria falhar?'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('NADA'),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('ABSOLUTAMENTE NADA'),
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
            ],
          ),
        ),
      ),





        drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

          //HOME

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Enzo Marighella"),
              accountEmail: Text("marighella@batmandocarianos.com"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    AssetImage('assets/images/mariguelinho_main_picture.jpg'),
                backgroundColor: Colors.redAccent,
              ),
            ),

            ListTile(
              title: const Text('Pergunte ao Gato'),
              leading: const Icon(Icons.favorite),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AskTheCat();
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
                  return const MarighellosPictures(title: 'Fotinhas');
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CryptoHome(title: 'Doe cripto');
                }));
                // Update the state of the app.
                // ...
              },
              hoverColor: Colors.redAccent,
            ),

            AvatarGlow(
              glowColor: Theme.of(context).primaryColor,
              endRadius: 100.0,
              duration: const Duration(milliseconds: 3000),
              repeatPauseDuration: const Duration(milliseconds: 100),
              repeat: true,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: _incrementCounter,
                tooltip: "As flores são bonitas em qualquer lugar do mundo, muita gente tem forma mas não tem conteúdo.",
                //child: const Icon(Icons.favorite, size: 40,),
                child: Text('$_counter'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
