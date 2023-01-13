
import 'package:tsel/color_schema.dart';
import 'package:flutter/material.dart';
import 'package:tsel/login.dart';
import 'package:tsel/pages/Keterangan.dart';
import 'package:tsel/pages/jadwal.dart';
import 'package:tsel/pages/profile.dart';
import 'package:tsel/pages/home.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<HalamanUtama> {
  int _SelectedIndex = 0;

  void _onTap(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }

List<Widget> pages = [
  Scanqr(),
  // keterangan(),
      Jadwal(),
      Profil(),
     
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        selectedItemColor: Colors.black,
        currentIndex: _SelectedIndex,
        onTap: _onTap,
        items:[
        BottomNavigationBarItem(
          icon: Icon(_SelectedIndex ==0 ? Icons.home_outlined : Icons.home_outlined),
        label:'Home'
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(_SelectedIndex ==1 ? Icons.description_outlined : Icons.description_outlined),
        // label:'Keterangan'
        // ),
        BottomNavigationBarItem(
          icon: Icon(_SelectedIndex ==2 ? Icons.schedule_outlined : Icons.schedule_outlined),
        label:'Jadwal'
        ),
        BottomNavigationBarItem(
          icon: Icon(_SelectedIndex ==3 ?  Icons.person :Icons.person_outlined),
        label:'Profile'
        ),
        
      ],
      ),  
    );
  }
}
