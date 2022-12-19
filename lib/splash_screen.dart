

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
      backgroundColor: Colors.white,
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 149,
          ),
        
          const Text(
            'Lontar Lab Foundation',
            style:TextStyle(
            fontSize:30,
            color : Colors.lightBlue,
            fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          const Text(
            "Penerimaan Praktik Kerja Lapangan\ndan Presensi Siswa",
            style: TextStyle(
              fontSize:18,
              color : Colors.lightBlue,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        SizedBox(height: 20,),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25)
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/image/pklku.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
           SizedBox(height: 100,),
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
                      color: Colors.lightBlue,
                    ),
                    child: Text('Lanjutkan',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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