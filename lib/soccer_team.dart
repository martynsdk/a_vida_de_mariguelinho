import 'package:flutter/material.dart';

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

class _SoccerTeam extends State<SoccerTeam> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        title: const Text('O Clube do Coração'),
        centerTitle: true,
      ),

      body: Container(
          width: double.infinity,
        height: double.infinity,
        child: Image.asset('assets/images/sport_club_internacional/sportclubinternacional1.gif', fit: BoxFit.fill)
      ),





    );
  }

}