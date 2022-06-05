import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as speechToText;


class AboutName extends StatefulWidget {
  @override
  _AboutName createState() => _AboutName();
}

class _AboutName extends State<AboutName> {
  late speechToText.SpeechToText speech;
  String textString = "Pressione o Botão";
  bool isListen = false;
  double confidence = 1.0;
  final Map<String, HighlightedWord> highlightWords = {
    "flutter": HighlightedWord(
        textStyle:
        TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "developer": HighlightedWord(
        textStyle:
        TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
  };

  void listen() async {
    if (!isListen) {
      bool avail = await speech.initialize();
      if (avail) {
        setState(() {
          isListen = true;
        });
        speech.listen(onResult: (value) {
          setState(() {
            textString = value.recognizedWords;
            if (value.hasConfidenceRating && value.confidence > 0) {
              confidence = value.confidence;
            }
          });
        });
      }
    } else {
      setState(() {
        isListen = false;
      });
      speech.stop();
    }
  }

  @override
  void initState() {
    super.initState();
    speech = speechToText.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sugestão de Nome"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Text(
              "Confiança: ${(confidence * 100.0).toStringAsFixed(1)}%",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextHighlight(
              text: textString,
              words: highlightWords,
              textStyle: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),


      floatingActionButton: AvatarGlow(
        animate: isListen,
        glowColor: Colors.red,
        endRadius: 65.0,
        duration: Duration(milliseconds: 2000),
        repeatPauseDuration: Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          child: Icon(isListen ? Icons.mic : Icons.mic_none),
          onPressed: () {
            listen();
          },
        ),
      ),
    );
  }
}