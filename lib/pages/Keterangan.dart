import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tsel/utama.dart';
import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';

import 'package:path/path.dart';

class Keterangan extends StatefulWidget {
  DocumentReference docRef;
  String dariHalaman;
  Keterangan({super.key, required this.docRef, required this.dariHalaman});

  @override
  State<Keterangan> createState() => _KeteranganState();
}

class _KeteranganState extends State<Keterangan> {
  // late XFile _imageFile;
  String email = FirebaseAuth.instance.currentUser!.email!;

  // /NOTE: Only supported on Android & iOS
  // /Needs image_picker plugin {https://pub.dev/packages/image_picker}
  // final _picker = ImagePicker();

  // Future pickImage() async {
  //   final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

  //   setState(() {
  //     _imageFile = XFile(pickedFile!.path);
  //   });
  // }

  final List<String> list = <String>['Hadir', 'Sakit', 'Ijin'];

  String dropdownValue = '';
  @override
  void initState() {
    dropdownValue = list.first;
    // TODO: implement initState
    super.initState();
  }

  // Future<String> uploadImageToFirebase(BuildContext context) async {
    // String fileName = basename(_imageFile.path);
    // Reference firebaseStorageRef =
    //     FirebaseStorage.instance.ref().child('absensi/$email/$fileName');
    // UploadTask uploadTask = firebaseStorageRef.putFile(File(_imageFile.path));
    // TaskSnapshot taskSnapshot = uploadTask.snapshot;
    // String downloadUrl = await taskSnapshot.ref.getDownloadURL();

  //   return downloadUrl;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image/pklku.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Keterangan Absensi",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 56, 57, 57)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Keterangan",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 46, 46, 46))),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(62, 82, 81, 81),
                                  offset: Offset(2, 5),
                                  blurRadius: 9)
                            ]),
                        child: DropdownButtonFormField<String>(
                          value: dropdownValue,
                          elevation: 16,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  dropdownValue == "Sakit" || dropdownValue == "Ijin"
                      ? InkWell(
                          onTap: () {
                            print('tombol ditekan');
                            // pickImage();
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Upload Bukti',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color:
                                          Color.fromARGB(255, 122, 122, 122)),
                                ),
                                Expanded(
                                    child: Center(child: Icon(Icons.upload)))
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () async {
                                if (widget.dariHalaman == "Masuk") {
                                  if (dropdownValue == "Sakit" ||
                                      dropdownValue == "Ijin") {
                                    // String url =
                                    //     await uploadImageToFirebase(context);

                                    await widget.docRef.update({
                                      "absen_masuk": Timestamp.now(),
                                      "keterangan_masuk": dropdownValue,
                                      "bukti_masuk": url,
                                    });
                                  } else {
                                    
                                    await widget.docRef.update({
                                      "absen_masuk": Timestamp.now(),
                                      "keterangan_masuk": dropdownValue,
                                    });
                                  }
                                } else {
                                  if (dropdownValue == "Sakit" ||
                                      dropdownValue == "Ijin") {
                                    // String url =
                                    //     await uploadImageToFirebase(context);

                                    
                                  await widget.docRef.update({
                                    "absen_keluar": Timestamp.now(),
                                    "keterangan_keluar": dropdownValue,
                                    "bukti_keluar": url,
                                  });
                                  } else {
                                    
                                  await widget.docRef.update({
                                    "absen_keluar": Timestamp.now(),
                                    "keterangan_keluar": dropdownValue
                                  });
                                  }
                                }
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HalamanUtama(),
                                  ),
                                );
                              },
                              child: Text('Simpan'))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}



// class keterangan extends StatefulWidget {
//   const keterangan({super.key});

//   @override
//   State<keterangan> createState() => _keteranganState();
// }

// class _keteranganState extends State<keterangan> {
//   pilihan? selectedPilih;
//   List <pilihan> pilihans = [        
//     pilihan('Sakit'),
//     pilihan('Ijin')
//   ];
//   List <DropdownMenuItem> generateItems(List<pilihan> pilihans ){
//     List <DropdownMenuItem> items = [];
//     for (var item in pilihans) {
//       items.add(DropdownMenuItem(
//         child: Text(item.pilih),
//         value: item,
//         ));
        
//     }
//     return items;
//   } 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Keterangan'
//         ),
//         ),
//         body: Column(
//           children: <Widget>[
//             DropdownButton(
              
//               hint: Text('Pilih'),
//               value: selectedPilih,
//               items: generateItems(pilihans),
//               onChanged: (item) {
//                 setState(() {
//                   selectedPilih = item;
//                 });
//               },
//             ),
//             Text((selectedPilih != null) ? selectedPilih!.pilih : "")
//           ],
//         ),
//     );
//   }
// }

// class pilihan {
//   String pilih;
//   pilihan(this.pilih);
// }