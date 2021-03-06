import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class FunnyCatVideos extends StatefulWidget {
  const FunnyCatVideos({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'KvE92fCMbmc',
  params: const YoutubePlayerParams(
      playlist: [
        'KvE92fCMbmc',
        'Fy_dFSHBL0k',
        '_nCYVFad8sE',
        'wBjbNdgSPzc',
        'wZPbsiJ4Cj8',
        'J4fiWn1IfZc',
        '6btQUn_NAcI',
        'WwcvO09mxFg',
        '8i1I7-0shm4',
      ],
      showControls: true,
      showFullscreenButton: true,
      enableKeyboard: true,
      enableCaption: true,
      startAt: Duration(seconds: 0),
      useHybridComposition: true,
      desktopMode: true,
      strictRelatedVideos: true),
);

class _FunnyCatVideos extends State<FunnyCatVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text("kitten-videos".i18n()),
        centerTitle: true,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: YoutubePlayerIFrame(
                controller: _controller, aspectRatio: 16 / 9),
          ),
        ],
      ),
    );
  }
}
