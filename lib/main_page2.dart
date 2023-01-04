import 'package:tsel/color_schema.dart';
import 'package:tsel/pengajuan.dart';
import 'package:flutter/material.dart';
import 'package:tsel/login.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        
        body: Container(
          width: MediaQuery.of(context).size.width,
          
          decoration: const BoxDecoration(
            color: Colors.white,
            
          ),
          
          child: ListView(
            children: [
              // const SizedBox(
              //   height: 30,
              // ),
              Column(
                children: [
                  Container(
            height: 250,
           
            decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/halo.png'),
                  
                  
                  ),
            ),
          ),
                ],
              ),
           const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 35, right: 35),
                child: const Center(
                  child:  Text(
                    ' Halo.. Silahkan pilih menu dibawah ini\n untuk melanjutkan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const login();
                    },
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/image/login .png'),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 34, 34, 34),
                        fontSize:18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const pengajuan();
                    },
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/image/pengajuan.png'),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      'Pengajuan',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 34, 34, 34),
                        fontSize:18,
                      ),
                    ),
                  ],
                ),
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
