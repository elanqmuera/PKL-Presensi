import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsel/color_schema.dart';
import 'package:tsel/pages/profile_body.dart';


class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color> [Color.fromARGB(255, 2, 49, 130), Color.fromARGB(223, 37, 182, 255)]
            )
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 119, 223) ,
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      

      body: SingleChildScrollView
      (
        child: const ProfileBody())
      );
  }
}
