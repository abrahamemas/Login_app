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
    apiKey: 'AIzaSyDa7ihlLshoHNfGBRvfmywI7_yYLIogeuk',
    appId: '1:102126129768:web:4d022189157c30743221dd',
    messagingSenderId: '102126129768',
    projectId: 'auth-3939f',
    authDomain: 'auth-3939f.firebaseapp.com',
    storageBucket: 'auth-3939f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3liwybseqdWp2OE_bh8mwGE7rWK0VgsE',
    appId: '1:102126129768:android:bb79f76bbeb9fbdd3221dd',
    messagingSenderId: '102126129768',
    projectId: 'auth-3939f',
    storageBucket: 'auth-3939f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJCSpMzUjRlWDszecSdtNCcyGaopzm0Xs',
    appId: '1:102126129768:ios:fa0e73930da2b6233221dd',
    messagingSenderId: '102126129768',
    projectId: 'auth-3939f',
    storageBucket: 'auth-3939f.appspot.com',
    iosBundleId: 'com.example.signInPage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJCSpMzUjRlWDszecSdtNCcyGaopzm0Xs',
    appId: '1:102126129768:ios:c6917305efc965983221dd',
    messagingSenderId: '102126129768',
    projectId: 'auth-3939f',
    storageBucket: 'auth-3939f.appspot.com',
    iosBundleId: 'com.example.signInPage.RunnerTests',
  );
}
