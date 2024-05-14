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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBSXPJw1knlMfe2QpzGWumbZV9-fmusAWc',
    appId: '1:86246039747:web:220bffc722efce7d880276',
    messagingSenderId: '86246039747',
    projectId: 'app-teste-f6845',
    authDomain: 'app-teste-f6845.firebaseapp.com',
    storageBucket: 'app-teste-f6845.appspot.com',
    measurementId: 'G-33HBRSZFCZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqFS7bJkWI4MMEoni2AHXeS623GGqu9HM',
    appId: '1:86246039747:android:6c07395c2d424845880276',
    messagingSenderId: '86246039747',
    projectId: 'app-teste-f6845',
    storageBucket: 'app-teste-f6845.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSpyFQ-e_FICmEjMC93iAXGBMG8rMbnqs',
    appId: '1:86246039747:ios:e785784ee2b8376c880276',
    messagingSenderId: '86246039747',
    projectId: 'app-teste-f6845',
    storageBucket: 'app-teste-f6845.appspot.com',
    iosBundleId: 'com.example.appTeste',
  );
}