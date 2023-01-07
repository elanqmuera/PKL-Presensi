import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
class Jadwal extends StatelessWidget {

  const Jadwal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
             Text('Jadwal',
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
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              height: 10,
                              child: Icon(Icons.arrow_left_outlined),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                              child: Text(
                                '02 - 08 Januari 2023',
                                style: TextStyle(
                                  fontSize: 15
                                ),
                              ),
                            ),
                            Container(
                          
                              width: 100,
                              height: 5,
                              child: Icon(Icons.arrow_right),
                            ),
                          ],
                        ),
                      ),
                      
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
                          Text('Peserta',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          Spacer(),
                          Text('08:00 - 17:00',
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
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
                          Text('Peserta',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          Spacer(),
                          Text('08:00 - 17:00',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
                      ),
                      SizedBox(height: 5,),
                      const Divider(color: Color.fromARGB(255, 0, 0, 0)),
              
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                           Container(
                            constraints: BoxConstraints(maxWidth: 30),
                             child: Text('04\r Rab',
                             style: TextStyle(fontSize: 16),),
                           ),
                           SizedBox(width: 30,),
                          Text('Peserta',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          Spacer(),
                          Text('08:00 - 17:00',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          SizedBox(width: 10.0, height: 50,),
                          
                        ],
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
                          Text('Peserta',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          Spacer(),
                          Text('08:00 - 17:00',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          SizedBox(width: 10.0, height: 50,),
                          
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
                          Text('Peserta',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          Spacer(),
                          Text('08:00 - 17:00',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                          SizedBox(width: 10.0, height: 50,),
                          
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