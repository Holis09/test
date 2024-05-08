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
    apiKey: 'AIzaSyCzgUVekd4_htfisTjiOFbPbj8bgqT8uJI',
    appId: '1:455006438346:web:2bb67a036d084f93e04533',
    messagingSenderId: '455006438346',
    projectId: 'fasum-app-cca6d',
    authDomain: 'fasum-app-cca6d.firebaseapp.com',
    storageBucket: 'fasum-app-cca6d.appspot.com',
    measurementId: 'G-1Y3LX4ZBD5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyBxgytkdaYuc-e-xMqzk_l6rjta_5DDg',
    appId: '1:455006438346:android:b8a31e992ef40f07e04533',
    messagingSenderId: '455006438346',
    projectId: 'fasum-app-cca6d',
    storageBucket: 'fasum-app-cca6d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDrrfQoizqAfio8B56X41yKDEpcW3boW70',
    appId: '1:455006438346:ios:36b495cb0578a333e04533',
    messagingSenderId: '455006438346',
    projectId: 'fasum-app-cca6d',
    storageBucket: 'fasum-app-cca6d.appspot.com',
    iosBundleId: 'com.example.fasum',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDrrfQoizqAfio8B56X41yKDEpcW3boW70',
    appId: '1:455006438346:ios:bd0655394fcff726e04533',
    messagingSenderId: '455006438346',
    projectId: 'fasum-app-cca6d',
    storageBucket: 'fasum-app-cca6d.appspot.com',
    iosBundleId: 'com.example.fasum.RunnerTests',
  );
}