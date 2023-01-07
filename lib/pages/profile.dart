import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tsel/database/database.dart';
import 'package:tsel/login.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromARGB(255, 2, 49, 130),
                Color.fromARGB(223, 37, 182, 255)
              ])),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 119, 223),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: Database().streamProfile(),
          builder:
              (_, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: Text("Data tidak ada"),
              );
            } else {
              List<DocumentSnapshot<Map<String, dynamic>>> documents =
                  snapshot.data!.docs;

              print(documents);

              return SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: List.generate(documents.length, (index) {
                        DocumentSnapshot<Map<String, dynamic>> docs =
                            documents[index];
                        return Container(child: _listWidget(docs, context));
                      }),
                    ),
                    Container(
                        child: ElevatedButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ),
                            ((route) => false));
                      },
                      child: Text('Logout'),
                    ))
                  ],
                ),
              );
            }
          }),
    );
  }
}

Widget _listWidget(
    DocumentSnapshot<Map<String, dynamic>> docs, BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.all(1.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            // color: Colors.black87
          ),
          child:  CircleAvatar(
            backgroundImage: NetworkImage(docs.data()!['images'].toString()),
            radius: 55,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          docs.data()!['nama'],
          style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 43, 42, 42)),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Peserta Praktik Kerja Lapangan',
          style:
              TextStyle(fontSize: 14, color: Color.fromARGB(255, 89, 87, 87)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          docs.data()!['email'],
          style: TextStyle(
              fontSize: 11, color: Color.fromARGB(255, 113, 111, 111)),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
          ),
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sekolah'),
                  Spacer(),
                  Text(
                    docs.data()!['sekolah'],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              const Divider(color: Color.fromARGB(255, 0, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Jurusan '),
                  Spacer(),
                  Text(
                    docs.data()!['jurusan'],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Program Studi '),
                  Spacer(),
                  Text(
                    docs.data()!['program_studi'],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Alamat '),
                  Spacer(),
                  Text(
                    docs.data()!['alamat'],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Jenis Kelamin '),
                  Spacer(),
                  Text(
                    docs.data()!['jenis_kelamin'],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Nomor ponsel '),
                  Spacer(),
                  Text(
                    docs.data()!['nomor_ponsel'],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
