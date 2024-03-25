import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ocr_and_tts/app.dart';
import 'package:ocr_and_tts/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyC_14a3W8O9m31KNB5vWnNWiw7LDjx_M6Y",
            appId: "1:491587759792:android:9220eb92a022732dc45575",
            messagingSenderId: "491587759792",
            projectId: "ocr-and-tts",
          ),
        )
      : Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FireBaseUserRepo()));
}
