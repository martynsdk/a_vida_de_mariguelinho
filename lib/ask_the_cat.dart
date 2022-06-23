import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:assets_audio_player/assets_audio_player.dart';
import 'dart:math';

class AskTheCat extends StatefulWidget {
  const AskTheCat({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const AskTheCat(),
    );
  }

  @override
  _AskTheCatState createState() => _AskTheCatState();
}

class _AskTheCatState extends State<AskTheCat> {
  final Map<String, HighlightedWord> _highlights = {
    'vida': HighlightedWord(
      textStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
    'maconha': HighlightedWord(
      textStyle: const TextStyle(
        color: Colors.greenAccent,
        fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
    'por que': HighlightedWord(
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
    'deus': HighlightedWord(
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
    'aqui': HighlightedWord(
      textStyle: const TextStyle(
        color: Colors.pink,
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
    ),
    'quando': HighlightedWord(
      textStyle: const TextStyle(
        color: Colors.brown,
        fontWeight: FontWeight.bold,
        fontSize: 50
      ),
    ),
    'gosta': HighlightedWord(
      textStyle: const TextStyle(
          color: Colors.brown,
          fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
    'quer': HighlightedWord(
      textStyle: const TextStyle(
          color: Colors.brown,
          fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
    'mia': HighlightedWord(
      textStyle: const TextStyle(
          color: Colors.brown,
          fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
    'miau': HighlightedWord(
      textStyle: const TextStyle(
          color: Colors.brown,
          fontWeight: FontWeight.bold,
          fontSize: 50
      ),
    ),
  };

  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = 'Faça uma pergunta e terá uma resposta';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  randomGen(min, max) {
    var x = Random().nextInt(max) + min;
    return x.floor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: const Text('Pergunte ao Marighella'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        glowColor: Theme.of(context).primaryColor,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 3000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
              onPressed: _listen,
            tooltip: "Aperte o botão uma vez e fale...",
              child: Icon(_isListening ? Icons.mic : Icons.mic_none)),

      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
          child: TextHighlight(
            text: _text,
            words: _highlights,
            textStyle: const TextStyle(
              fontSize: 32.0,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  void _listen() async {
    int a = randomGen(1, 15);
    setState(() => _isListening = false);
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          listenFor: const Duration(seconds: 5),
          onResult: (val) => setState(() {
            _text = '${val.recognizedWords}?';
            if (val.hasConfidenceRating && val.confidence > 0) {
              1.0 == val.confidence;
            }
            if(_text.length > 3){
              audioPlayer.open(Audio('assets/audio/meow$a.mp3'));
              setState(() => _isListening = false);
            }

          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
