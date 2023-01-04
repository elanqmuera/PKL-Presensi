

// ignore: unused_import
import 'package:tsel/color_schema.dart';
import 'package:flutter/material.dart';

        // ignore: camel_case_types
        class pengajuan extends StatelessWidget {
          
          const pengajuan({ Key? key }) : super(key: key);
       
          @override
          Widget build(BuildContext context) {
           const String _jk="";
            return Scaffold(
              backgroundColor: Colors.white,
              body:SingleChildScrollView(
                child: Center(
                  
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    
                    child: Column(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [                    
                      const SizedBox(height: 70,),
                          Column(
                          children: [
                            Container(
                               height: 120,
                                  width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                image: AssetImage('assets/image/pklku.png'),
                              ),
                              ),
              
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Text("Pengajuan Praktik Kerja Lapangan",  
                        style: TextStyle(fontSize: 16,
                        color: Colors.lightBlue),
                        ),
                         const SizedBox(height: 20,),
              
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Nama Lengkap", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),

                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Nama Lengkap",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),
                                )
                          ],
                        ),
                        const SizedBox(
                          height: 10,),
              
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Asal Instansi / Sekolah", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                 child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Asal Instansi / Sekolah",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),
                                )
                          ],
                        ),
                        SizedBox(height: 10,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Alamat", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                child: TextField(
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Alamat",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),
                                )
                          ],
                        ),
              SizedBox(height: 10,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Jurusan", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                 child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Jurusan",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),)
                          ],
                        ),
                        SizedBox(height: 10,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Kelas / Semester", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                 child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Kelas / Semester",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),)
                          ],
                        ),
                        SizedBox(height: 10,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Jenis Kelamin", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                )
                          ],
                        ),
                         new RadioListTile(
                          value: "Laki-laki",
                          title: new Text("Laki-laki",),
                           groupValue: _jk,
                           onChanged:(Stringvalue) {
                             
                           },
                           ),


                        SizedBox(height: 10,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Email", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                 child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),)
                          ],
                        ),
                        SizedBox(height: 10,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("No.Hp", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                 child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "No.hp",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),)
                          ],
                        ),
                        
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                              const SizedBox(height: 10,),
                               Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              const SizedBox(height: 10,),
                             Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed:(){
                                },
                                 child: Text('Kirim')
                                )
                                ),
                          ],
                        ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),    
                      ],
                    ),
                  ),
                ),
              )
            
            );
          }
        }