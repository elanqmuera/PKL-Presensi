import 'package:flutter/services.dart';
import 'package:tsel/TampilanAwal.dart';
import 'package:tsel/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
  // FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pklku',
      
      theme: ThemeData(
        // primarySwatch: Colors.blueGrey,
      ),
      home: const SplashScreen(),
    );
  }
}


