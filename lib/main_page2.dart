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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Lontar Lab Foundation",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
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
                height: 50,
              ),
              Center(
                child: const Text(
                  ' Pilih Menu',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
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
                      height: 30,
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
                      height: 30,
                    ),
                    const Text(
                      'Pengajuan',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlue,
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
