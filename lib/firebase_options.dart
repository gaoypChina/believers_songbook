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
    apiKey: 'AIzaSyB7cvT5QtIVZZ-WNn8vYapD8Q8SjLYOOrk',
    appId: '1:107811782306:web:f5869bf13888260bf4a1fb',
    messagingSenderId: '107811782306',
    projectId: 'songbook-for-believers',
    authDomain: 'songbook-for-believers.firebaseapp.com',
    storageBucket: 'songbook-for-believers.appspot.com',
    measurementId: 'G-LFMKX02Z7N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpvK9z6-X-7xFL3sK0DLFpnZ8n9XclJvc',
    appId: '1:107811782306:android:65798dbc33a55f95f4a1fb',
    messagingSenderId: '107811782306',
    projectId: 'songbook-for-believers',
    storageBucket: 'songbook-for-believers.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC477dR9Y3wUl03Aa0tPrnXG1fFGhyQm4M',
    appId: '1:107811782306:ios:6137da093f67b9cdf4a1fb',
    messagingSenderId: '107811782306',
    projectId: 'songbook-for-believers',
    storageBucket: 'songbook-for-believers.appspot.com',
    iosClientId:
        '107811782306-4j03n4s8pvov949il9fo7vhh0tagnv59.apps.googleusercontent.com',
    iosBundleId: 'com.ngonimujuru.songbookForBelievers',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC477dR9Y3wUl03Aa0tPrnXG1fFGhyQm4M',
    appId: '1:107811782306:ios:6137da093f67b9cdf4a1fb',
    messagingSenderId: '107811782306',
    projectId: 'songbook-for-believers',
    storageBucket: 'songbook-for-believers.appspot.com',
    iosClientId:
        '107811782306-4j03n4s8pvov949il9fo7vhh0tagnv59.apps.googleusercontent.com',
    iosBundleId: 'com.ngonimujuru.songbookForBelievers',
  );
}
