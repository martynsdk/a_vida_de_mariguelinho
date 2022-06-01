import 'package:flutter/material.dart';
import 'main.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Quantidade de vezes que o botão foi pressionado:',
              ),
              Text(
                //'$_counter',
                'A',
                style: Theme.of(context).textTheme.headline4,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyHomePage(title: 'A vida de Mariguelinho');
                  }));
                },
                child: const Text('Voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
