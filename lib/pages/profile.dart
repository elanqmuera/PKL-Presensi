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
        title: Text('Profile'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
        centerTitle: true,
        backgroundColor: whiteColor,
        foregroundColor: Color.fromARGB(255, 43, 42, 42),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      

      body: SingleChildScrollView
      (
        child: const ProfileBody())
      );
  }
}
