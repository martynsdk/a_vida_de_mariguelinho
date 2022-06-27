import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class NelsonMandela extends StatefulWidget {
  const NelsonMandela({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "title-text".i18n(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const NelsonMandela(),
    );
  }

  @override
  _NelsonMandela createState() => _NelsonMandela();
}

class _NelsonMandela extends State<NelsonMandela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
        title: const Text('Sir. Nelson Mandela'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/images/nelsonmandela.jpg', fit: BoxFit.fitHeight,),
      )
    );
  }
}
