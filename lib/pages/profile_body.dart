
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 140, 139, 139),
                  blurRadius: 10,
                  offset: Offset(0, 2)
                ),
                
              ],
              borderRadius: BorderRadius.all(Radius.circular(60),
              ),
              // color: Colors.black87
              
            ),
            
            child: CircleAvatar(
              
              backgroundImage: AssetImage('assets/image/elang.jpeg'),
              radius: 60,
              ),
          ),
            SizedBox(
            height: 10,
          ),
            Text('Muhammad Elang',
            style: TextStyle(
              fontSize:28.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 43, 42, 42)),
            ),
            SizedBox(
              height: 5,
            ),
            Text('muhammadelang030415@gmail.com',
            style: TextStyle(
              fontSize:12,
              color: Color.fromARGB(255, 89, 87, 87)
            ),
            ),
           const SizedBox(
              height: 5,
            ),
           const Text('083195739340',
             style: TextStyle(
              fontSize:13,
              color: Color.fromARGB(255, 113, 111, 111)
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.lightBlueAccent,
              ),
               
              padding: EdgeInsets.all(12),
              margin:EdgeInsets.only(left: 20, right: 20),
              child: Column(
              
                children: [
                 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Text('Sekolah  '),
                       Spacer(),
                      Text('Politeknik Negeri Subang'),
                      SizedBox(width: 10.0,),
                      Icon(Icons.school_outlined)
                    ],
                  ),
                  const Divider(color: Colors.white),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Jurusan '),
                      Spacer(),
                      Text('Management Informatika'),
                      SizedBox(width: 10.0,),
                      Icon(Icons.military_tech_rounded)
                    ],
                  ),
                  const Divider(color: Colors.white,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Program Studi '),
                      Spacer(),
                      Text('Sistem Informasi'),
                      SizedBox(width: 10.0,),
                      Icon(Icons.military_tech_rounded)
                    ],
                  ),
                ],
              ),
            )
        ],
        ),
    );
  }
}