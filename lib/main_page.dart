
import 'package:tsel/color_schema.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String selectedType = "Bersih";
  String selectedFrequency = "monthly";

  void onChangePaketType (String type) {
    selectedType = type;
    setState(() {});
  }
  void changeFraquency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Lontar Lab Foundation",
        style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        )
      ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text('Pilih Menu',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangePaketType("bersih");
                  },
               child: Column(
                 children: [
               
                Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.40,
                 decoration: BoxDecoration(
                   color: deepPurple50,
                   borderRadius: const BorderRadius.all(Radius.circular(20),),
                   image: const DecorationImage(
                     image: AssetImage('assets/image/img1.png'),
                     ),
                   )                  
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 const Text("Paket Bersih",
                   style: TextStyle(
                   fontWeight: FontWeight.w600
                 )
                 ),
                 
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 30,
                  
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: deepPurple50,
                  ),
                  child: selectedType == "Bersih"
                  ? Icon(
                    Icons.check_circle,
                    color: Colors.pink[400],
                    size: 30,
                  )
                  :Container(),
                ),

           const SizedBox(
                  height: 10,
                ),
//yang kedua
               InkWell(
                 onTap:() {
                   onChangePaketType("mengkilap");
                 },
                 child: Column(
                   children: [ 
                     Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.40,
                 decoration: BoxDecoration(
                   color: deepPurple50,
                   borderRadius: const BorderRadius.all(Radius.circular(20),),
                   image: const DecorationImage(
                     image: AssetImage('assets/image/img2.png'),
                     ),
                   )                  
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 const Text('Mengkilap',
                 style: TextStyle(
                   fontWeight: FontWeight.w600,
                 ),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                  Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: deepPurple50,
                  ),
                  child: selectedType == "mengkilap"
                  ? Icon(
                    Icons.check_circle,
                    color: Colors.pink[400],
                    size: 30,
                  )
                  :Container(),
                ),
                 ],
                 ),
               )

               
                  ],
                )
                 ),
              ],
              
            )
          ],
        ),
      ),
    ),
    );
  }
}