// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAIvlf4SiGvJfj_6CmZJ5sH7syjYtN7Nxw',
    appId: '1:184417484527:web:7f0e81258ffe01c213a51a',
    messagingSenderId: '184417484527',
    projectId: 'chat-app-cc225',
    authDomain: 'chat-app-cc225.firebaseapp.com',
    storageBucket: 'chat-app-cc225.appspot.com',
    measurementId: 'G-M1F66Q6WQD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjoGLedWl_6dX-mbXfGJKBKJaZLMYqm64',
    appId: '1:184417484527:android:90a80cefc00a998e13a51a',
    messagingSenderId: '184417484527',
    projectId: 'chat-app-cc225',
    storageBucket: 'chat-app-cc225.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfNCoTjoHe1mnLykJtQX7ED3NRkNMm57w',
    appId: '1:184417484527:ios:c509cc26a36ea49313a51a',
    messagingSenderId: '184417484527',
    projectId: 'chat-app-cc225',
    storageBucket: 'chat-app-cc225.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfNCoTjoHe1mnLykJtQX7ED3NRkNMm57w',
    appId: '1:184417484527:ios:f4304c06bce1a3de13a51a',
    messagingSenderId: '184417484527',
    projectId: 'chat-app-cc225',
    storageBucket: 'chat-app-cc225.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
