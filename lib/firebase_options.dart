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
    apiKey: 'AIzaSyB6VwMx5Mlc0uTZhrXfwbQHdfQr2fFYVes',
    appId: '1:536643017513:web:9c5b069bb68eab2ad57538',
    messagingSenderId: '536643017513',
    projectId: 'messageme-app-9b73e',
    authDomain: 'messageme-app-9b73e.firebaseapp.com',
    storageBucket: 'messageme-app-9b73e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9nV2uah3TiMq0RjgM742EXTdtECLJvD4',
    appId: '1:536643017513:android:355eb4d0395a3299d57538',
    messagingSenderId: '536643017513',
    projectId: 'messageme-app-9b73e',
    storageBucket: 'messageme-app-9b73e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtsmIcOVpPwCMg_3gD4wJovVjuGGf_MoI',
    appId: '1:536643017513:ios:3e7a88fe2fa4e26bd57538',
    messagingSenderId: '536643017513',
    projectId: 'messageme-app-9b73e',
    storageBucket: 'messageme-app-9b73e.appspot.com',
    androidClientId: '536643017513-3ljtc4prhaksf1ocvrvc2p6sagn9ao5i.apps.googleusercontent.com',
    iosClientId: '536643017513-asset2ae1vuds6ltqu5c5flfpfh42ji9.apps.googleusercontent.com',
    iosBundleId: 'com.example.messageApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtsmIcOVpPwCMg_3gD4wJovVjuGGf_MoI',
    appId: '1:536643017513:ios:889a4012c6749ba4d57538',
    messagingSenderId: '536643017513',
    projectId: 'messageme-app-9b73e',
    storageBucket: 'messageme-app-9b73e.appspot.com',
    androidClientId: '536643017513-3ljtc4prhaksf1ocvrvc2p6sagn9ao5i.apps.googleusercontent.com',
    iosClientId: '536643017513-kh6oe4ijo42e91fnmbglilkmcrbo6h79.apps.googleusercontent.com',
    iosBundleId: 'com.example.messageApp.RunnerTests',
  );
}
