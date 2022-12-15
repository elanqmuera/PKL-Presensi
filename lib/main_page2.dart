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
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            
          ),
          
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/pklku.png'),
              fit: BoxFit.cover,
              ),
            ),
          ),
           const SizedBox(
                height: 40,
              ),
              Center(
                child: const Text(
                  ' Silahkan pilih menu dibawah ini',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
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
                      height: 130,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/image/login.png'),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlue,
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
                      height: 130,
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
                      height: 10,
                    ),
                    const Text(
                      'Pengajuan',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 116, 31, 152),
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
