
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogAbsensi extends StatelessWidget {

  const LogAbsensi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
             Text('Log Absensi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:  Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors : <Color> [Color.fromARGB(255, 2, 49, 130), Color.fromARGB(223, 37, 182, 255)]
                )
              ),
            ),
            ),
            body:  SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      
                      SizedBox(height: 20,),
                      
                       Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:Colors.transparent,
                  ),
                   
                  padding: EdgeInsets.all(12),
                  margin:EdgeInsets.only(left: 1, right: 1),
                  
                  child: Column(
                  
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 40),
                             child: Text('02\r Sen',
                             style: TextStyle(fontSize: 16),),
                           ),
                           SizedBox(width: 20,),
                          Text('Jam Kerja',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          
                          Spacer(),
                         
                          SizedBox(width: 10.0, height: 20,),
                          
                        ],
                      ),
                      Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 60)
                           ),
                          Text('08:05:49',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          
                          Spacer(),
                           Text('Jam Masuk',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.red),),
                          SizedBox(width: 10.0, height: 30,),
                          
                        ],
                      ),
                      ),
                          Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 60)
                           ),
                          Text('17:05:49',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          
                          Spacer(),
                           Text('Jam Keluar',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.red),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
                      ),
                      ),
                       SizedBox(height: 5,),
                      const Divider(color: Color.fromARGB(255, 0, 0, 0)),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 40),
                             child: Text('03\r Sel',
                             style: TextStyle(fontSize: 16),),
                           ),
                           SizedBox(width: 20,),
                          Text('Jam Kerja',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          
                          Spacer(),
                         
                          SizedBox(width: 10.0, height: 20,),
                          
                        ],
                      ),
                      Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 60)
                           ),
                          Text('08:05:49',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          
                          Spacer(),
                           Text('Jam Masuk',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.red),),
                          SizedBox(width: 10.0, height: 30,),
                          
                        ],
                      ),
                      ),
                          Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 60)
                           ),
                          Text('17:05:49',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          
                          Spacer(),
                           Text('Jam Keluar',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.red),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
                      ),
                      ),
                       
                      SizedBox(height: 5,),
                      const Divider(color: Color.fromARGB(255, 0, 0, 0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 40),
                             child: Text('04\r Rab',
                             style: TextStyle(fontSize: 16),),
                           ),
                           SizedBox(width: 20,),
                          Text('Jam Kerja',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          
                          Spacer(),
                         
                          SizedBox(width: 10.0, height: 20,),
                          
                        ],
                      ),
                      Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 60)
                           ),
                          Text('08:05:49',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          
                          Spacer(),
                           Text('Jam Masuk',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.red),),
                          SizedBox(width: 10.0, height: 30,),
                          
                        ],
                      ),
                      ),
                          Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 60)
                           ),
                          Text('17:05:49',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          
                          Spacer(),
                           Text('Jam Keluar',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.red),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
                      ),
                      ),
                      
              
                  
                      const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 40),
                             child: Text('05\r Kam',
                             style: TextStyle(fontSize: 16),),
                           ),
                           SizedBox(width: 20,),
                          Text('Jam Kerja',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          Spacer(),
                        ],
                      ),
                      
                       const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 40),
                             child: Text('06\r Jum',
                             style: TextStyle(fontSize: 16),),
                           ),
                           SizedBox(width: 20,),
                          Text('Jam Kerja',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          Spacer(),
                          
                        ],
                      ),
                       const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 40),
                             child: Text('07\r Sab',
                             style: TextStyle(fontSize: 16,color: Colors.red),),
                           ),
                           SizedBox(width: 20,),
                          Text('Libur',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          Spacer(),
                          Text('-',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
                      ),
                       const Divider(color: Color.fromARGB(255, 0, 0, 0),),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 50),
                             child: Text('08\r Min',
                          
                             style: TextStyle(fontSize: 16,
                             color: Colors.red),),
                           ),
                           SizedBox(width: 10,),
                          Text('Libur',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          Spacer(),
                          Text('-',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.red),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
                      ),
                    ],
                  ),
                  
                ),
                SizedBox(height: 50,)
                    ],
                    
                  ),
                  
                  
              
                ),
            ),
            );
            
      
    
  }
}