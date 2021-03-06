// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart

// ...
///await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDPkLrw6rCckiNzgH_0m3kP24OC0KHEfMo',
    appId: '1:668092980235:web:18eb1ffc1c723aef24bb0e',
    messagingSenderId: '668092980235',
    projectId: 'a-vida-de-mariguelinho',
    authDomain: 'a-vida-de-mariguelinho.firebaseapp.com',
    storageBucket: 'a-vida-de-mariguelinho.appspot.com',
    measurementId: 'G-BWHZF9CK0C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDS0v4QCplTP_OZnlJ4eY5_J7oVObOubR0',
    appId: '1:668092980235:android:413d2499fe843fc724bb0e',
    messagingSenderId: '668092980235',
    projectId: 'a-vida-de-mariguelinho',
    storageBucket: 'a-vida-de-mariguelinho.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkPKA9eX3aYEdb0Ly_DE-kHW_B1-gXfHQ',
    appId: '1:668092980235:ios:e251c960128bfd5f24bb0e',
    messagingSenderId: '668092980235',
    projectId: 'a-vida-de-mariguelinho',
    storageBucket: 'a-vida-de-mariguelinho.appspot.com',
    iosClientId: '668092980235-cbhr3nvrfi4vnf2677blsksphadv3l2e.apps.googleusercontent.com',
    iosBundleId: 'com.example.aVidaDeMariguelinho',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkPKA9eX3aYEdb0Ly_DE-kHW_B1-gXfHQ',
    appId: '1:668092980235:ios:e251c960128bfd5f24bb0e',
    messagingSenderId: '668092980235',
    projectId: 'a-vida-de-mariguelinho',
    storageBucket: 'a-vida-de-mariguelinho.appspot.com',
    iosClientId: '668092980235-cbhr3nvrfi4vnf2677blsksphadv3l2e.apps.googleusercontent.com',
    iosBundleId: 'com.example.aVidaDeMariguelinho',
  );
}
