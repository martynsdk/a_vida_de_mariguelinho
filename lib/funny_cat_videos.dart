import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FunnyCatVideos extends StatefulWidget {
  const FunnyCatVideos(int i, {Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A vida de Mariguelinho',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const FunnyCatVideos(1),
    );
  }

  @override
  _FunnyCatVideos createState() => _FunnyCatVideos();
}

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'ZcYdCU3Znyo',
  flags: const YoutubePlayerFlags(
    isLive: true,
    autoPlay: true,
    showLiveFullscreenButton: true,
    controlsVisibleAtStart: true,
  ),
);

final List<String> imageList = [
  'assets/images/mariguelinho_main_picture.jpg',
  'assets/images/mariguelinho1.jpg',
  'assets/images/marighelinho2.jpg',
  'assets/images/marighelinho3.jpg'
];

class _FunnyCatVideos extends State<FunnyCatVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (_) {
                      return Dialog(
                        child: GestureDetector(
                          child: Hero(
                              tag: 'imageHero',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(imageList[1],
                                    fit: BoxFit.fitHeight),
                              )),
                          //onTap: () => Navigator.pop(context,),
                          onTap: () {
                            SystemChrome.setPreferredOrientations(
                                [DeviceOrientation.portraitUp]);
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const FunnyCatVideos(1);
                            }));
                          },
                        ),
                      );
                    },
                  );
                },
                child: const Icon(
                    Icons.more_vert
                ),
              )
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: const Text('Videos de Gatinhos'),
        centerTitle: true,
      ),

      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: YoutubePlayer(
              controller: _controller,
              liveUIColor: Colors.redAccent,
              onReady: () {
                _controller.play();
              },
            ),
          )
        ],
      ),
    );
  }
}
