import 'dart:ui';

import 'package:tsel/pages/scanqrcode.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class scanqr extends StatelessWidget {
  const scanqr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment(0.378, -0.801),
            end: Alignment(0.378, 0.847),
            colors: <Color>[
              Color.fromARGB(255, 0, 77, 209),
              Color.fromARGB(223, 1, 122, 182),
              Color.fromARGB(0, 15, 147, 213)
            ],
            stops: <double>[0, 0.394, 1],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(2.0, 40.0, 40.0, 50.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 20.0, 1.0, 1.0),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "Muhammad Elang",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      10.0, 3.0, 40.0, 10.0),
                                  child: const Text(
                                    "Peserta Praktik Kerja Lapangan",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/image/elang.jpeg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 30),
                margin: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(5, 5),
                        blurRadius: 9)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: const Text(
                              'Jadwal Kerja',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: const Text('Senin, 02 Januari 2023',
                                style: TextStyle(fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '08.00 - 17:00',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      //   height: 40,
                      //   padding: EdgeInsets.only(left: 10, right: 50),
                      //  decoration: BoxDecoration(
                      //   color: Color.fromARGB(255, 14, 200, 221),
                      //   borderRadius: BorderRadius.circular(10),

                      //  ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const QRViewExample(),
                                ));
                              },
                              child: Text('Jam Masuk'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const QRViewExample(),
                                ));
                              },
                              child: Text('Jam Keluar'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: const Text(
                      'Log absensi',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: const Text(
                      'Lihat semua',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 45, 125, 255),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: const Text(
                      'Waktu',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      '08:00:38',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 207, 15, 15),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: const Text(
                      'Jam Masuk',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 45, 125, 255),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      '17:00:42',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 207, 15, 15),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: const Text(
                      'Jam Keluar',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 45, 125, 255),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
