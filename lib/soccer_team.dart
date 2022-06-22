import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SoccerTeam extends StatefulWidget {
  const SoccerTeam({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A vida de Mariguelinho',
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

final Uri _url1 = Uri.parse('https://www.internacional.com.br');
void _launchUrl1() async {
  if (!await launchUrl(_url1)) throw 'Could not launch $_url1';
}

final Uri _url2 = Uri.parse('https://pt.wikipedia.org/wiki/Sport_Club_Internacional');
void _launchUrl2() async {
  if (!await launchUrl(_url2)) throw 'Could not launch $_url2';
}


class _SoccerTeam extends State<SoccerTeam> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: const Text('O Clube do Coração'),
        centerTitle: true,
      ),

      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/sport_club_internacional/sportclubinternacional1.gif', fit: BoxFit.fitHeight),
            ),


            const ListTile(
              leading: Icon(Icons.sports_soccer),
              title: Text('SPORT CLUB INTERNACIONAL'),
              subtitle:
              Text('O Clube do Povo.'),
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
                  child: const Text('História'),
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
    );
  }

}