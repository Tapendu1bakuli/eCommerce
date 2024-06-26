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
     // case TargetPlatform.iOS:
        // return ios;
      // case TargetPlatform.macOS:
      //   return macos;
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
      apiKey: "AIzaSyAiXuy8nYScEYvJeZWpnwkQ7lCOesmTHbw",
      authDomain: "ecommerce-3831a.firebaseapp.com",
      projectId: "ecommerce-3831a",
      storageBucket: "ecommerce-3831a.appspot.com",
      messagingSenderId: "25914179488",
      appId: "1:25914179488:web:2346ac053c6f3c7dbdaec5",
      measurementId: "G-12TPYQ5KVC"
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDovBXdGz_1n2WaiDbYHjmw3duxvTAezdA',
    appId: '1:25914179488:android:c40a2b1776cd7c04bdaec5',
    messagingSenderId: '25914179488',
    projectId: 'ecommerce-3831a',
    storageBucket: 'ecommerce-3831a.appspot.com',
   // androidClientId: '267506235313-7lr3m8tch201rrlkljjg7fehvabk42o0.apps.googleusercontent.com',

  );

  // static const FirebaseOptions ios = FirebaseOptions(
  //   apiKey: 'AIzaSyDwOH85l7jFelUJKMfLR8hq5299zzs6a80',
  //   appId: '1:267506235313:ios:e57b9a90c81ca217a8af90',
  //   messagingSenderId: '267506235313',
  //   projectId: 'nuritopia2d-670a5',
  //   storageBucket: 'nuritopia2d-670a5.appspot.com',
  //   iosClientId: '267506235313-ukam7ro0g20j0aagil5d6vfje730n9kp.apps.googleusercontent.com',
  //   iosBundleId: 'com.nuriflex.nuritopia2d',
  // );

  // static const FirebaseOptions macos = FirebaseOptions(
  //   apiKey: 'AIzaSyCa6yJQdchPBIZwk4UUnx1YdcrxqCANR5g',
  //   appId: '1:966244259012:ios:13f26f12fc8ed4504f2591',
  //   messagingSenderId: '966244259012',
  //   projectId: 'lightforth-ec021',
  //   storageBucket: 'lightforth-ec021.appspot.com',
  //   iosClientId: '966244259012-uetpcdqnl3lr9ocq4omgn464ng738h99.apps.googleusercontent.com',
  //   iosBundleId: 'com.lightforth.ai.RunnerTests',
  // );
}
