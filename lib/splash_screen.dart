

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
      
      backgroundColor: whiteColor,
     
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
             
              Colors.white,
               Color.fromARGB(255, 4, 53, 159),
               Color.fromARGB(255, 66, 19, 99)
            ]
          )
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 149,
            ),
          
            const Text(
              'PT Jerbee Indonesia',
              style:TextStyle(
              fontSize:30,
              color : Colors.white,
              fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            const Text(
              "Penerimaan Praktik Kerja Lapangan\ndan Presensi Siswa",
              style: TextStyle(
                fontSize:18,
                color : Colors.white,
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
                          image: AssetImage('assets/image/pklku2.png'),
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
                        gradient: LinearGradient(
                    begin : Alignment.bottomLeft,
                    end : Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromARGB(255, 255, 255, 255),
                       Color.fromARGB(255, 255, 255, 255),
                      // Color.fromARGB(255, 212, 207, 211),
                    ]
                    ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),   
                      ),
                      child: Text('Lanjutkan',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),),
                      
                  ),
                )
              ],
            )
          ],
        ),
      ),
      
    ),
    );
  }
}  