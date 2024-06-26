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
    apiKey: 'AIzaSyBNtL-CM42MYQRUBf7H5M9aM3bzjblVYAo',
    appId: '1:307602166744:web:fe9829154b32f0d330d8ad',
    messagingSenderId: '307602166744',
    projectId: 'flutter-projects-a0afb',
    authDomain: 'flutter-projects-a0afb.firebaseapp.com',
    storageBucket: 'flutter-projects-a0afb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrDhqjsUtkt2uVLlKYy1wmD52kahzqAFY',
    appId: '1:307602166744:android:72938d7d04e806c730d8ad',
    messagingSenderId: '307602166744',
    projectId: 'flutter-projects-a0afb',
    storageBucket: 'flutter-projects-a0afb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_FmxroIEgN6pGlo2TxO_mPvmUjm5ISPQ',
    appId: '1:307602166744:ios:95463635950c94b830d8ad',
    messagingSenderId: '307602166744',
    projectId: 'flutter-projects-a0afb',
    storageBucket: 'flutter-projects-a0afb.appspot.com',
    iosBundleId: 'com.example.pushApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_FmxroIEgN6pGlo2TxO_mPvmUjm5ISPQ',
    appId: '1:307602166744:ios:95463635950c94b830d8ad',
    messagingSenderId: '307602166744',
    projectId: 'flutter-projects-a0afb',
    storageBucket: 'flutter-projects-a0afb.appspot.com',
    iosBundleId: 'com.example.pushApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBNtL-CM42MYQRUBf7H5M9aM3bzjblVYAo',
    appId: '1:307602166744:web:bdc123f5e773bf6730d8ad',
    messagingSenderId: '307602166744',
    projectId: 'flutter-projects-a0afb',
    authDomain: 'flutter-projects-a0afb.firebaseapp.com',
    storageBucket: 'flutter-projects-a0afb.appspot.com',
  );
}
