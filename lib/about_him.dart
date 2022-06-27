import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localization/localization.dart';
import 'ask_the_cat.dart';

class AboutHim extends StatefulWidget {
  const AboutHim({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title-text".i18n(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const AboutHim(),
    );
  }

  @override
  _AboutHim createState() => _AboutHim();
}

class _AboutHim extends State<AboutHim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text("about-him".i18n()),
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
          ListTile(
            title: Center(child: Text("enzo-marighella".i18n())),
            subtitle: Center(
                child: Text("press-button-ask-questions".i18n())),
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
            tooltip: "click-once-ask-questions".i18n(),
            child: const Icon(Icons.mic),
          ),
          ListTile(
            title: Center( child: Text("about-him".i18n())),
            subtitle: Center(child: Text("marighellas-history".i18n())),
          ),
        ],
      ),
    );
  }
}
