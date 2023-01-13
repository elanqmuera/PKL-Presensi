import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class Database{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> streamAbsen() {
     DateTime today = DateTime.now();
  String formattedDate = DateFormat('dd-MM-yyyy').format(today);
     final Timestamp now = Timestamp.fromDate(DateTime.now());
  final Timestamp yesterday = Timestamp.fromDate(
    DateTime.now().subtract(const Duration(days: 1)),
  );
    String email =FirebaseAuth.instance.currentUser!.email!;
    return firestore.collection('absen').where('tanggal', isEqualTo: formattedDate).where('email',isEqualTo:email).snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamProfile() {
    String email =FirebaseAuth.instance.currentUser!.email!;
    return firestore.collection('users').where('email',isEqualTo:email).snapshots();
  }


  
}