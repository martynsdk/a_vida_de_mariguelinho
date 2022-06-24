import 'package:a_vida_de_mariguelinho/about_him.dart';
import 'package:a_vida_de_mariguelinho/ask_the_cat.dart';
import 'package:a_vida_de_mariguelinho/funny_cat_videos.dart';
import 'package:a_vida_de_mariguelinho/marighellos_pictures.dart';
import 'package:a_vida_de_mariguelinho/nelson_mandela.dart';
import 'package:a_vida_de_mariguelinho/soccer_team.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'crypto.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];

    return MaterialApp(
      localeResolutionCallback: (locale, supportedLocales) {
        if (supportedLocales.contains(locale)) {
          return locale;
        }

        // define pt_BR as default when de language code is 'pt'
        if (locale?.languageCode == 'pt') {
          return const Locale('pt', 'BR');
        }

        // default language
        return const Locale('en', 'US');
      },
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // delegate from localization package.
        LocalJsonLocalization.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: "mariguelinhos-life".i18n(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: MyHomePage(title: "mariguelinhos-life".i18n()),
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
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

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

    final Uri _url1 = Uri.parse(
        'https://pt.wikipedia.org/wiki/Gato#:~:text=O%20gato%20(Felis%20silvestris%20catus,p%C3%A1ssaros%2C%20lagartixas%20e%20alguns%20insetos.');
    void _launchUrl1() async {
      if (!await launchUrl(_url1)) throw 'Could not launch $_url1';
    }

    final Uri _url2 = Uri.parse('https://pt.wikipedia.org/wiki/Fel%C3%ADdeos');
    void _launchUrl2() async {
      if (!await launchUrl(_url2)) throw 'Could not launch $_url2';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text('title-text'.i18n()),
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
                    ListTile(
                        title: Center(
                          child: Text("welcome-text".i18n()),
                        ),
                        //title: Text('Sejam muito bem-vindxs!'),
                        subtitle:
                            Center(child: Text("im-mariguelinho".i18n()))),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(imageList[0], fit: BoxFit.fill),
                    ),
                    ListTile(
                      leading: const Icon(Icons.album),
                      title: Text("the-insanecat".i18n()),
                      subtitle: Text("incredible-shenanigans".i18n()),
                    ),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(15),
                child: SizedBox(
                  //height: MediaQuery.of(context).size.height,
                  child: CarouselSlider.builder(
                    itemCount: imageList.length,
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      //height: MediaQuery.of(context).size.height,
                      //height: 300,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      reverse: false,
                      aspectRatio: 1.0,
                    ),
                    itemBuilder: (context, i, id) {
                      return GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0)),
                          //ClipRRect for image border radius
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(imageList[i],
                                  fit: BoxFit.fitHeight)),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Card(
                  margin: const EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(imageList[1], fit: BoxFit.fill),
                  )),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.album),
                      title: Text("Mariguelinho".i18n()),
                      subtitle: Text("take-care-of-love".i18n()),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: Text("cats".i18n()),
                          onPressed: () {
                            _launchUrl1();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: Text("felids".i18n()),
                          onPressed: () {
                            _launchUrl2();
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("enzo-marighella".i18n()),
              accountEmail: const Text("marighella@batmandocarianos.com"),
              currentAccountPicture: const CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    AssetImage('assets/images/mariguelinho_main_picture.jpg'),
                backgroundColor: Colors.redAccent,
              ),
            ),
            ListTile(
              title: Text("ask-marighella".i18n()),
              leading: const Icon(Icons.mic),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AskTheCat();
                }));
                // Update the state of the app.
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
                // ...
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: Text("about-him".i18n()),
              leading: const Icon(Icons.history_edu),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AboutHim();
                }));
                // Update the state of the app.
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
                // ...
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: Text("pics".i18n()),
              leading: const Icon(Icons.photo_album_rounded),
              onTap: () {
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MarighellosPictures(title: "pics".i18n());
                }));
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: Text("donate-crypto".i18n()),
              leading: const Icon(Icons.wallet_membership),
              onTap: () {
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CryptoHome(title: "donate-crypto".i18n());
                }));
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: Text("kitten-videos".i18n()),
              leading: const Icon(Icons.monitor_outlined),
              onTap: () {
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FunnyCatVideos();
                }));
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: Text("favorite-soccer-team".i18n()),
              leading: const Icon(Icons.sports_soccer),
              onTap: () {
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SoccerTeam();
                }));
              },
              hoverColor: Colors.redAccent,
            ),
            ListTile(
              title: const Text('Nelson Mandela'),
              leading: const Icon(Icons.favorite),
              onTap: () {
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NelsonMandela();
                }));
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
                //backgroundColor: Theme.of(context).primaryColor,
                onPressed: () =>
                    audioPlayer.open(Audio('assets/audio/beatheart.mp3')),
                tooltip: "strong-heart".i18n(),
                child: const Icon(Icons.favorite,
                    size: 50, color: Colors.redAccent),
                //child: Text('$_counter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
