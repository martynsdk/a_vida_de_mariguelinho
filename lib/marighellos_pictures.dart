import 'package:flutter/material.dart';
import 'main.dart';


class MarighellosPictures extends StatelessWidget {
  const MarighellosPictures({Key? key, required this.title}) : super(key: key);
  final String title;

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
      'assets/images/marighelinho15.jpg'
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),

      body: Center(

        child: GridView.builder(
          itemCount: imageList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3
            //crossAxisSpacing: 5.0,
            //mainAxisSpacing: 5.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (_) {
                    return ShowFullImage();
                  },
                );
              },
                child: Image.asset(imageList[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}

class ImageList {

}

class ShowFullImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: GestureDetector(
          //child: Image.asset('assets/images/mariguelinho_main_picture.jpg', fit: BoxFit.cover),
          child: Image.asset('assets/images/mariguelinho_main_picture.jpg', fit: BoxFit.cover),
          onTap: () => Navigator.pop(
            context,
          ),
        ),
    );
  }
}
