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
    apiKey: 'AIzaSyBFGCH17jMDnNqOdXjHBzGuvZskqni9WEk',
    appId: '1:481366828690:web:2f6d9988dc93bd27e2e84b',
    messagingSenderId: '481366828690',
    projectId: 'mynotes-flutter-project9870',
    authDomain: 'mynotes-flutter-project9870.firebaseapp.com',
    storageBucket: 'mynotes-flutter-project9870.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHQOGiE9x3jwaop_JAU2RmkZsoeY_i500',
    appId: '1:481366828690:android:ec8eb49f5a0be8b7e2e84b',
    messagingSenderId: '481366828690',
    projectId: 'mynotes-flutter-project9870',
    storageBucket: 'mynotes-flutter-project9870.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdkaLsL2SdaQH9V5CmpTML9o4euJQm0d8',
    appId: '1:481366828690:ios:19fa73a08350dfe1e2e84b',
    messagingSenderId: '481366828690',
    projectId: 'mynotes-flutter-project9870',
    storageBucket: 'mynotes-flutter-project9870.appspot.com',
    iosClientId: '481366828690-htuqb3j1nui19l1m1o1qrp9qh1ks1pke.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdkaLsL2SdaQH9V5CmpTML9o4euJQm0d8',
    appId: '1:481366828690:ios:19fa73a08350dfe1e2e84b',
    messagingSenderId: '481366828690',
    projectId: 'mynotes-flutter-project9870',
    storageBucket: 'mynotes-flutter-project9870.appspot.com',
    iosClientId: '481366828690-htuqb3j1nui19l1m1o1qrp9qh1ks1pke.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
