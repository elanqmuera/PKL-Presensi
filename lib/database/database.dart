import 'package:cloud_firestore/cloud_firestore.dart';

class Database{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> streamAbsen() {
    return firestore.collection('absen').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamProfile() {
    return firestore.collection('users').snapshots();
  }


  
}