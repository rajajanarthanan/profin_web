// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
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
        return windows;
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
    apiKey: 'AIzaSyD1EwVadFO3wsvHTA5Hoil3BR5kAnIhURw',
    appId: '1:893369469150:web:45090a9a36cf72a0a3da4f',
    messagingSenderId: '893369469150',
    projectId: 'profinixtechnologies-pr75',
    authDomain: 'profinixtechnologies-pr75.firebaseapp.com',
    storageBucket: 'profinixtechnologies-pr75.appspot.com',
    measurementId: 'G-BHPV965TLD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAemHdMhstxoJk5r1q7zC_wqzOG52vwSm0',
    appId: '1:893369469150:android:033429349d328871a3da4f',
    messagingSenderId: '893369469150',
    projectId: 'profinixtechnologies-pr75',
    storageBucket: 'profinixtechnologies-pr75.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWuq-H-0RU0BKE0-a622tKlc29RQIGmBA',
    appId: '1:893369469150:ios:ee1df9229c57f5caa3da4f',
    messagingSenderId: '893369469150',
    projectId: 'profinixtechnologies-pr75',
    storageBucket: 'profinixtechnologies-pr75.appspot.com',
    iosBundleId: 'com.example.prWebTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWuq-H-0RU0BKE0-a622tKlc29RQIGmBA',
    appId: '1:893369469150:ios:ee1df9229c57f5caa3da4f',
    messagingSenderId: '893369469150',
    projectId: 'profinixtechnologies-pr75',
    storageBucket: 'profinixtechnologies-pr75.appspot.com',
    iosBundleId: 'com.example.prWebTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD1EwVadFO3wsvHTA5Hoil3BR5kAnIhURw',
    appId: '1:893369469150:web:87c494995c1430caa3da4f',
    messagingSenderId: '893369469150',
    projectId: 'profinixtechnologies-pr75',
    authDomain: 'profinixtechnologies-pr75.firebaseapp.com',
    storageBucket: 'profinixtechnologies-pr75.appspot.com',
    measurementId: 'G-XMR8HF53NH',
  );
}
