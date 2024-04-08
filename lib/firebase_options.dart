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
    apiKey: 'AIzaSyAG0X_On9NsLVgwl6i26jDy-nO6lz_v2T0',
    appId: '1:165161712792:web:914b25951fd145403b64ed',
    messagingSenderId: '165161712792',
    projectId: 'eassyshopping-f4350',
    authDomain: 'eassyshopping-f4350.firebaseapp.com',
    storageBucket: 'eassyshopping-f4350.appspot.com',
    measurementId: 'G-KS760QSLGT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDobZ5L_I9aUExObrwjZBw9tQ2obB9xqtw',
    appId: '1:165161712792:android:651eda4500ebc7d83b64ed',
    messagingSenderId: '165161712792',
    projectId: 'eassyshopping-f4350',
    storageBucket: 'eassyshopping-f4350.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1P-2vui8u9rDvl2bfeBtb9ogwJhGmL8I',
    appId: '1:165161712792:ios:6ceb93244790f8033b64ed',
    messagingSenderId: '165161712792',
    projectId: 'eassyshopping-f4350',
    storageBucket: 'eassyshopping-f4350.appspot.com',
    iosBundleId: 'com.example.ecomress',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1P-2vui8u9rDvl2bfeBtb9ogwJhGmL8I',
    appId: '1:165161712792:ios:e81c83f9629555233b64ed',
    messagingSenderId: '165161712792',
    projectId: 'eassyshopping-f4350',
    storageBucket: 'eassyshopping-f4350.appspot.com',
    iosBundleId: 'com.example.ecomress.RunnerTests',
  );
}
