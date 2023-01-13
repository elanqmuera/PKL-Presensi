
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tsel/color_schema.dart';
import 'package:flutter/material.dart';  
import 'package:tsel/utama.dart';  

        // ignore: camel_case_types
       class login extends StatefulWidget {
             login ({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
        String email = '';

        String password = '';

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
                         color: Color.fromARGB(255, 61, 62, 62)),),
                         const SizedBox(height: 10),
                        const Text("Login Sekarang Untuk Melanjutkan",  
                        style: TextStyle(fontSize: 14,
                        color: Color.fromARGB(255, 44, 45, 45)),
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
                            const Text("Email", 
                            style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 61, 62, 62))
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                
                                child: TextField(
                                  onChanged: (value) {
                                    email = value ;
                                    
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email address",
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
                              fontSize: 15, fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 61, 62, 62))
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                child:  TextField(
                                   onChanged: (value) {
                                    password = value ;
                                  },
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
                                onPressed:()async {
                                  try {
                                    print (email) ;
                                    print (password);
                                    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password );
                                   Navigator.pushAndRemoveUntil(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => HalamanUtama(),
                                       ),
                                       
                                       ((route) => false)
                                        );
                                  } catch (e) {
                                    print (e.toString());
                                  }
                                  
                                 
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