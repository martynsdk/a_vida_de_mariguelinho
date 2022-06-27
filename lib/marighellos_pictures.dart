import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';


class MarighellosPictures extends StatefulWidget {
  const MarighellosPictures({Key? key, required this.title}) : super(key: key);
  final String title;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title-text".i18n(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: MarighellosPictures(title: "mariguelos-pictures".i18n()),
    );
  }

  @override
  _MarighellosPictures createState() => _MarighellosPictures();
}

class _MarighellosPictures extends State<MarighellosPictures> {
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


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.builder(
          itemCount: imageList.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
                  ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Image.asset(imageList[index], fit: BoxFit.cover),
              onTap: () async {
                await showDialog(
                  context: context,
                  barrierColor: Colors.transparent,
                  builder: (_) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child:
                      GestureDetector(
                        child: Hero(
                            tag: 'My Cat Image',
                            transitionOnUserGestures: true,
                            child: PinchZoomImage(
                              image: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(imageList[index], fit: BoxFit.fitHeight)
                              ),
                              hideStatusBarWhileZooming: true,
                              zoomedBackgroundColor: Colors.transparent
                            ),
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
