import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:tsel/database/database.dart';
import 'package:tsel/log_absensi.dart';
import 'package:tsel/pages/Keterangan.dart';
import 'package:tsel/pages/scanqrcode.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../pengajuan.dart';

class Scanqr extends StatefulWidget {
  const Scanqr({Key? key}) : super(key: key);

  @override
  State<Scanqr> createState() => _ScanqrState();
}

class _ScanqrState extends State<Scanqr> {
  String email = FirebaseAuth.instance.currentUser!.email!;
  @override
  void initState() {
    checkAndAddData();
    // TODO: implement initState
    super.initState();
  }

  Future checkAndAddData() async {
    DateTime today = DateTime.now();
    String formattedDate = DateFormat('dd-MM-yyyy').format(today);
    QuerySnapshot<Map<String, dynamic>> dokumenAbsen = await FirebaseFirestore
        .instance
        .collection('absen')
        .where('tanggal', isEqualTo: formattedDate)
        .where('email', isEqualTo: email)
        .get();

    if (dokumenAbsen.size < 1) {
      print("buat data");
      FirebaseFirestore.instance.collection('absen').add({
        "email": email,
        "tanggal": formattedDate,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: Database().streamProfile(),
          builder: (context, dataprofile) {
            return StreamBuilder(
                stream: Database().streamAbsen(),
                builder: (context, snapshot) {
                  if (!dataprofile.hasData || !snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData && snapshot.hasError ||
                      !dataprofile.hasData && dataprofile.hasError ||
                      snapshot.data == null ||
                      dataprofile.data == null) {
                    return Center(child: CircularProgressIndicator());
                  }
                  DateTime absenMasuk = DateTime.now();
                  if (snapshot.data!.docs[0]
                      .data()
                      .toString()
                      .contains('absen_masuk')) {
                     absenMasuk = DateTime.fromMillisecondsSinceEpoch(
                        snapshot.data!.docs[0].get('absen_masuk').seconds *
                            1000);
                  }

                  DateTime absenKeluar = DateTime.now();
                  if (snapshot.data!.docs[0]
                      .data()
                      .toString()
                      .contains('absen_keluar')) {
                    absenKeluar = DateTime.fromMillisecondsSinceEpoch(
                        snapshot.data!.docs[0].get('absen_keluar').seconds *
                            1000);
                  }

                  //  Map<String, dynamic> user =
                  //       snapshot.data!.docs[0].data();

                  // DateTime keluar =
                  //     DateTime.fromMillisecondsSinceEpoch(snapshot.data!.docs[0].get('absen_keluar').seconds * 1000);
                  //  String masukString = snapshot.data!.docs[0].data()['absen_masuk'] == null ?
                  //     DateTime.fromMillisecondsSinceEpoch(snapshot.data!.docs[0].get('absen_masuk').seconds * 1000).toString(): 'Belum Absen Jam Masuk';
                  //  String keluarString = snapshot.data!.docs[0].data()['absen_keluar'] == null ?
                  //     DateTime.fromMillisecondsSinceEpoch(jam_keluar.seconds * 1000).toString(): 'Belum Absen Jam Keluar';
                  // DateTime masuk =
                  //     DateTime.fromMillisecondsSinceEpoch(snapshot.data!.docs[0].get('absen_masuk').seconds * 1000);
                  return SingleChildScrollView(
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
                            padding: const EdgeInsets.fromLTRB(
                                2.0, 40.0, 40.0, 50.0),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      10.0, 20.0, 1.0, 1.0),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                dataprofile.data!.docs[0]
                                                    .get('nama'),
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  10.0, 3.0, 40.0, 10.0),
                                              child: const Text(
                                                "Peserta Praktik Kerja Lapangan",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 60,
                                        height: 60,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                dataprofile.data!.docs[0]
                                                    .get('images')),
                                          ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: const Text(
                                          'Jadwal Kerja',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: const Text(
                                            'Senin, 02 Januari 2023',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700)),
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
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
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
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) => Keterangan(
                                                docRef: snapshot
                                                    .data!.docs[0].reference,
                                                dariHalaman: "Masuk",
                                              ),
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
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) => Keterangan(
                                                docRef: snapshot
                                                    .data!.docs[0].reference,
                                                dariHalaman: "Keluar",
                                              ),
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
                              InkWell(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LogAbsensi();
                                    },
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 25, right: 25),
                                      child: Text(
                                        'Lihat semua',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 45, 125, 255),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 25, right: 25),
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
                          snapshot.data!.docs.isEmpty
                              ? CircularProgressIndicator()
                              : Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 25, right: 25),
                                          child: Text(
                                            snapshot.hasData
                                                ? snapshot.data!.docs[0]
                                                        .data()
                                                        .toString()
                                                        .contains('absen_masuk')
                                                    ? '${absenMasuk.hour}: ${absenMasuk.minute} : ${absenMasuk.second}'
                                                    : 'Belum absen'
                                                : "Loading",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 207, 15, 15),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 25, right: 25),
                                          child: const Text(
                                            'Jam Masuk',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 45, 125, 255),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 25, right: 25),
                                          child: Text(
                                            snapshot.hasData
                                                ? snapshot.data!.docs[0]
                                                        .data()
                                                        .toString()
                                                        .contains(
                                                            'absen_keluar')
                                                    ? '${absenKeluar.hour}: ${absenKeluar.minute} : ${absenKeluar.second}'
                                                    : 'Belum absen'
                                                : "Loading",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 207, 15, 15),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 25, right: 25),
                                          child: const Text(
                                            'Jam Keluar',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 45, 125, 255),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
