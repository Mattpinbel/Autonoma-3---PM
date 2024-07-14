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
    apiKey: 'AIzaSyDkfwkC0AY_qpzQnVy_ZghmUMQ3UMYrGuw',
    appId: '1:712242979031:web:066273285b1944bf4cd092',
    messagingSenderId: '712242979031',
    projectId: 'fir-flutter-codelab-96252',
    authDomain: 'fir-flutter-codelab-96252.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-96252.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNR1uGPoZuUpD-3qEs3xBTfD3IOv03D3U',
    appId: '1:712242979031:android:8cd6c5f5c463c7304cd092',
    messagingSenderId: '712242979031',
    projectId: 'fir-flutter-codelab-96252',
    storageBucket: 'fir-flutter-codelab-96252.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_TuLnWKi70vL3HJY0bEgJC6M_KdHuHLg',
    appId: '1:712242979031:ios:cce6c90437cb02b44cd092',
    messagingSenderId: '712242979031',
    projectId: 'fir-flutter-codelab-96252',
    storageBucket: 'fir-flutter-codelab-96252.appspot.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_TuLnWKi70vL3HJY0bEgJC6M_KdHuHLg',
    appId: '1:712242979031:ios:cce6c90437cb02b44cd092',
    messagingSenderId: '712242979031',
    projectId: 'fir-flutter-codelab-96252',
    storageBucket: 'fir-flutter-codelab-96252.appspot.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDkfwkC0AY_qpzQnVy_ZghmUMQ3UMYrGuw',
    appId: '1:712242979031:web:36e0a84b822977b54cd092',
    messagingSenderId: '712242979031',
    projectId: 'fir-flutter-codelab-96252',
    authDomain: 'fir-flutter-codelab-96252.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-96252.appspot.com',
  );
}
