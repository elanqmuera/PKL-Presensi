

// ignore: unused_import
import 'package:tsel/color_schema.dart';
import 'package:flutter/material.dart';  

        // ignore: camel_case_types
        class login extends StatelessWidget {
          const login({ Key? key }) : super(key: key);
        
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: Colors.lightBlue[300],
              body:Center(
                
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  
                  child: Column(
                  
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [                    
                      const Text("Selamat Datang",
                       style:TextStyle(fontSize: 30, fontWeight: FontWeight.w700,
                       color: Colors.white),),
                       const SizedBox(height: 10),
                      const Text("Login Sekarang Untuk Melanjutkan",  
                      style: TextStyle(fontSize: 14,
                      color: Colors.white),
                      ),
                      const SizedBox(height: 30,),
                        Column(
                        children: [
                          Container(
                             height: 120,
                                width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                              image: AssetImage('assets/image/login.png'),
                            ),
                            ),

                          ),
                        ],
                      ),
                       const SizedBox(height: 20,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Login", 
                          style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700,
                            color: Colors.white)
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none
                                ),

                              ))
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
                            color: Colors.white)
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none
                                ),

                              ))
                        ],
                      ),
                      
                    
                      
                    ],
                  ),
                ),
              )
            
            );
          }
        }