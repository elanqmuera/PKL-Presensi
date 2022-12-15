

import 'package:tsel/color_schema.dart';
import 'package:tsel/main_page2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color(0xFF29B6F6),
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 90,
          ),
        
          const Text(
            'Lontar Lab Foundation',
            style:TextStyle(
            fontSize:30,
            color : Colors.white,
            fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Penerimaan Praktik Kerja Lapangan",
            style: TextStyle(
              fontSize:18,
              color : Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/splash.png'),
              fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const MainPage();
                },
                ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 23,
                  ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Text('Lanjutkan',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.lightBlue[400],
                    ),),
                    
                ),
              )
            ],
          )
        ],
      ),
      
    ),
    );
  }
}  