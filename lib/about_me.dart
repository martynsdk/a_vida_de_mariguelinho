import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ask_the_cat.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const AboutMe(),
    );
  }

  @override
  _AboutMe createState() => _AboutMe();
}

class _AboutMe extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: const Text('Sobre mim'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/mangrove.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
              ),
              const Positioned(
                bottom: -60.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage('assets/images/mariguelinho_main_picture.jpg'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const ListTile(
            title: Center(child: Text('Enzo Marighella')),
            subtitle: Center(
                child: Text('Pressione o botão abaixo e faça perguntas')),
          ),
          //BUTTONS
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AskTheCat();
              }));
              // Update the state of the app.
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.portraitUp]);
            },
            tooltip: "Clique e faça perguntas para mim",
            child: const Icon(Icons.mic),
          ),
          const ListTile(
            title: Text('Sobre mim'),
            subtitle: Text('Pois é, gentx. Essa é minha história.'),
          ),
        ],
      ),
    );
  }
}
