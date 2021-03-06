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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJ_ftF1JJu-ugaj2kvDKjlmo3O49IRKHg',
    appId: '1:1094109291021:android:c25aba3f8459afa127ab44',
    messagingSenderId: '1094109291021',
    projectId: 'magazine-c5281',
    storageBucket: 'magazine-c5281.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC59ImulqqeAntM1nnfhB6tuBh_B26j8Zg',
    appId: '1:1094109291021:ios:66764adb353322c827ab44',
    messagingSenderId: '1094109291021',
    projectId: 'magazine-c5281',
    storageBucket: 'magazine-c5281.appspot.com',
    iosClientId: '1094109291021-5hcbu38gfiqhfmv8ef7edm6hublqi1ji.apps.googleusercontent.com',
    iosBundleId: 'com.example.magazine',
  );
}
