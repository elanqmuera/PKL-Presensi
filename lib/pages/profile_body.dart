
import 'package:flutter/material.dart';
import 'package:tsel/login.dart';

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
              // boxShadow: [
              //   BoxShadow(
              //     color: Color.fromARGB(255, 140, 139, 139),
              //     blurRadius: 30,
              //     offset: Offset(0, 2)
              //   ),
                
              // ],
              borderRadius: BorderRadius.all(Radius.circular(60),
              ),
              // color: Colors.black87
              
            ),
            
            child: CircleAvatar(
              
              backgroundImage: AssetImage('assets/image/elang.jpeg'),
              radius: 55,
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
            Text('Peserta Praktik Kerja Lapangan',
            style: TextStyle(
              fontSize:14,
              color: Color.fromARGB(255, 89, 87, 87)
            ),
            ),
           const SizedBox(
              height: 5,
            ),
           const Text('muhammadelang030415@gmail.com',
             style: TextStyle(
              fontSize:11,
              color: Color.fromARGB(255, 113, 111, 111)
            ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:Colors.transparent,
              ),
               
              padding: EdgeInsets.all(12),
              margin:EdgeInsets.only(left: 10, right: 10),
              child: Column(
              
                children: [
                 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Text('Sekolah'),
                       Spacer(),
                      Text('Politeknik Negeri Subang'),
                      SizedBox(width: 10.0,),
                      
                    ],
                  ),
                  const Divider(color: Color.fromARGB(255, 0, 0, 0)),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Jurusan '),
                      Spacer(),
                      Text('Management Informatika'),
                      SizedBox(width: 10.0,),
                      
                    ],
                  ),
                  const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Program Studi '),
                      Spacer(),
                      Text('Sistem Informasi'),
                      SizedBox(width: 10.0,),
                      
                    ],
                  ),
                  
                   const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Alamat '),
                      Spacer(),
                      Text('Subang - Jawa Barat'),
                      SizedBox(width: 10.0,),
                     
                    ],
                  ),
                   const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Jenis Kelamin '),
                      Spacer(),
                      Text('Laki - laki'),
                      SizedBox(width: 10.0,),
                      
                    ],
                  ),
                   const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Nomor ponsel '),
                      Spacer(),
                      Text('+6283195739340'),
                      SizedBox(width: 10.0,),
                      
                    ],
                  ),
                  Container(
                    child: ElevatedButton(
                    onPressed: () {
                    Navigator.push(
                    context, 
                      MaterialPageRoute(
                          builder: (context) => login(),
                        ),
                    );
                    },
                    child: Text('Logout'),
             )
                  )
                ],
                
              ),
            )
        ],
        ),
    );
  }
}