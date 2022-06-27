import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:url_launcher/url_launcher.dart';

class SoccerTeam extends StatefulWidget {
  const SoccerTeam({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const SoccerTeam(),
    );
  }

  @override
  _SoccerTeam createState() => _SoccerTeam();
}

final Uri _url1 = Uri.parse("_url1".i18n());

void _launchUrl1() async {
  if (!await launchUrl(_url1)) throw 'Could not launch $_url1';
}

final Uri _url2 = Uri.parse("_url2".i18n());

void _launchUrl2() async {
  if (!await launchUrl(_url2)) throw 'Could not launch $_url2';
}

final Uri _url3 = Uri.parse("_url3".i18n());

void _launchUrl3() async {
  if (!await launchUrl(_url3)) throw 'Could not launch $_url3';
}

final Uri _url4 = Uri.parse("_url4".i18n());

void _launchUrl4() async {
  if (!await launchUrl(_url4)) throw 'Could not launch $_url4';
}

class _SoccerTeam extends State<SoccerTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Theme.of(context).secondaryHeaderColor,
          title: Text("favorite-soccer-team".i18n()),
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
                      child: Image.asset(
                          'assets/images/sport_club_internacional/sportclubinternacional1.gif',
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      leading: const Icon(Icons.sports_soccer),
                      title: const Text('SPORT CLUB INTERNACIONAL'),
                      subtitle: Text("peoples-club".i18n()),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Website'),
                          onPressed: () {
                            _launchUrl1();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: Text("history".i18n()),
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
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                          'assets/images/sport_club_internacional/sportclubinternacional2.jpg',
                          fit: BoxFit.fitHeight),
                    ),
                    ListTile(
                      leading: const Icon(Icons.sports_soccer),
                      title: Text("beira-rio-stadium".i18n()),
                      subtitle: Text("giant-beira-rio".i18n()),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Website'),
                          onPressed: () {
                            _launchUrl3();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: Text("history".i18n()),
                          onPressed: () {
                            _launchUrl4();
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ]))));
  }
}
