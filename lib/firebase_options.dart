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
    apiKey: 'AIzaSyBBlfTm2ezX7vrCMu5LZPYtjbw4Qi_FlQ8',
    appId: '1:1060089188265:web:a8929ddcc2f1fee6cdfeb8',
    messagingSenderId: '1060089188265',
    projectId: 'chatappinternship-30087',
    authDomain: 'chatappinternship-30087.firebaseapp.com',
    storageBucket: 'chatappinternship-30087.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCijvmKRfkmV-OKyFwtMZfhAI5T-Ru8Z7A',
    appId: '1:1060089188265:android:f6fed43f4b38e39dcdfeb8',
    messagingSenderId: '1060089188265',
    projectId: 'chatappinternship-30087',
    storageBucket: 'chatappinternship-30087.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_OK0jKauYPE8QnLtaG5Y656Kt_Wj151g',
    appId: '1:1060089188265:ios:81ce48ac598c4816cdfeb8',
    messagingSenderId: '1060089188265',
    projectId: 'chatappinternship-30087',
    storageBucket: 'chatappinternship-30087.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_OK0jKauYPE8QnLtaG5Y656Kt_Wj151g',
    appId: '1:1060089188265:ios:07dd41ce48a51eddcdfeb8',
    messagingSenderId: '1060089188265',
    projectId: 'chatappinternship-30087',
    storageBucket: 'chatappinternship-30087.appspot.com',
    iosBundleId: 'com.example.chatapp.RunnerTests',
  );
}
