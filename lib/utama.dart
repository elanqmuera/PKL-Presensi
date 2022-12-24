
import 'package:tsel/color_schema.dart';
import 'package:flutter/material.dart';
import 'package:tsel/login.dart';
import 'package:tsel/pages/scanqr.dart';

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
  scanqr(),
      const Center(
    child: Text(
      'Keterangan', style: TextStyle(
      fontSize: 40
      ),
      ),
      ),
      const Center(
    child: Text(
      'Laporan Presensi', style: TextStyle(
      fontSize: 40
      ),
      ),
      ),
      const Center(
    child: Text(
      'Profile', style: TextStyle(
      fontSize: 40
      ),
      ),
      ),
     
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        selectedItemColor: Colors.black,
        currentIndex: _SelectedIndex,
        onTap: _onTap,
        items:[
        BottomNavigationBarItem(
          icon: Icon(_SelectedIndex ==0 ? Icons.qr_code_2_outlined : Icons.qr_code_2_outlined),
        label:'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(_SelectedIndex ==1 ? Icons.report_gmailerrorred_outlined : Icons.report_gmailerrorred_outlined),
        label:'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(_SelectedIndex ==2 ? Icons.qr_code_2_outlined : Icons.qr_code_2_outlined),
        label:'Reels'
        ),
        BottomNavigationBarItem(
          icon: Icon(_SelectedIndex ==3 ?  Icons.person :Icons.person_outlined),
        label:'Shop'
        ),
        
      ],
      ),  
    );
  }
}
