
// ignore: unused_import
import 'package:tsel/color_schema.dart';
import 'package:flutter/material.dart';  
import 'package:tsel/utama.dart';  

        // ignore: camel_case_types
        class login extends StatelessWidget {
          const login({ Key? key }) : super(key: key);
        
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: Colors.white,
              body:SingleChildScrollView(
                child: Center(
                  
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    
                    child: Column(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [  
                        SizedBox(
                          height: 70,
                        ),                  
                        const Text("Selamat Datang",
                         style:TextStyle(fontSize: 30, fontWeight: FontWeight.w700,
                         color: Colors.lightBlue),),
                         const SizedBox(height: 10),
                        const Text("Login Sekarang Untuk Melanjutkan",  
                        style: TextStyle(fontSize: 14,
                        color: Colors.lightBlue),
                        ),
                        const SizedBox(height: 30,),
                          Column(
                          children: [
                            Container(
                               height: 100,
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
              
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Username", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700,
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
                                    hintText: "Username",
                                    hintStyle: TextStyle(fontSize: 14, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                                  ),
                                ),
                                ),
                                
                          ],
                        ),
                        const SizedBox(
                          height: 10,),
              
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            const Text("Password", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700,
                              color: Colors.lightBlue)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                child:  TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(fontSize: 13, color: textColor.withOpacity(0.4)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 17),
                                    suffixIcon: Icon(Icons.visibility_off)
                                  ),
                                )
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                        Text('Ingatkan Saya',
                               style: TextStyle(color: Colors.grey, fontSize: 13)),
                                  SizedBox(
                                     width: 80,
                                   ),
              
                                    Text('Lupa Password ?',
                                    style: TextStyle(
                                      color: Colors.black, 
                                      fontSize: 13, fontWeight: FontWeight.w500),)
                                    ],
                                )
                          ],
                        ),
                        SizedBox(height: 7,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              const SizedBox(height: 10,),
                             Container(
                              width: double.infinity,
                            
                              child: ElevatedButton(
                                onPressed:(){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => HalamanUtama(),
                                       ),
                                        );
                                }, child: Text('Login')
                              )
                           ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )  
            );
          }
        }