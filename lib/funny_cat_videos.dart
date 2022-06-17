import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class FunnyCatVideos extends StatefulWidget {
  const FunnyCatVideos({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A vida de Mariguelinho',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const FunnyCatVideos(),
    );
  }

  @override
  _FunnyCatVideos createState() => _FunnyCatVideos();
}

YoutubePlayerController _controller = YoutubePlayerController (
initialVideoId: "ZcYdCU3Znyo",
flags: const YoutubePlayerFlags(
isLive: true,
autoPlay: true,
showLiveFullscreenButton: true,
controlsVisibleAtStart: true
),
);


class _FunnyCatVideos extends State<FunnyCatVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Videos de Gatinhos'),
        centerTitle: true,
      ),



      body:
          WillPopScope(
            onWillPop: () async {
              _controller.toggleFullScreenMode();
              return Future.value(false);
            },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.redAccent,
                onReady: () {
                  _controller.play();
                },
              ),)
            ],


          ),
    ),




    );
  }
  
}