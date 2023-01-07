
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tsel/TampilanAwal.dart';
import 'package:tsel/utama.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
void initState() {
  super.initState();
  startSplashScreen();
}


startSplashScreen() async {
  var duration = const Duration (seconds: 5);
  return Timer(duration, () {
    if (FirebaseAuth.instance.currentUser == null) {
       Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) {
        return TampilanAwal();
      }
      )
    );
    } else {
       Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) {
        return HalamanUtama();
      }
      )
    );
    }
   
  },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
          decoration: BoxDecoration(
            
            gradient: LinearGradient (
               begin:  Alignment(0.378, -0.801),
                 end:  Alignment(0.378, 0.847),
              colors:  <Color>[Color.fromARGB(255, 0, 77, 209), Color.fromARGB(223, 1, 122, 182), Color.fromARGB(0, 15, 147, 213)],
              stops: <double> [0, 0.394, 1],
            )
          ),
      child: Center(
        child: Image.asset('assets/image/pklku2.png',
        width: 300,
        height: 250
        ,),
      ),
      ),
      
    );
  }
}