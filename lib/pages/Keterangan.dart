import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsel/utama.dart';  
 

// class Keterangan extends StatelessWidget {
//   const Keterangan({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//               backgroundColor: Colors.white,
//               body:SingleChildScrollView(
//                 child: Center(
                  
//                   child: Container(
//                     margin: const EdgeInsets.symmetric(horizontal: 30),
                    
//                     child: Column(
                    
//                       mainAxisAlignment: MainAxisAlignment.center,
                      
//                       children: [  
//                         SizedBox(
//                           height: 40,
//                         ),                  
//                         const SizedBox(height: 30,),
//                           Column(
//                           children: [
//                             Container(
//                                height: 100,
//                                   width: MediaQuery.of(context).size.width,
//                               decoration: const BoxDecoration(
//                                 image: DecorationImage(
//                                 image: AssetImage('assets/image/pklku.png'),
//                               ),
//                               ),
//                             ),
//                             SizedBox(height: 30,),
//                             const Text("Keterangan Absensi",
//                          style:TextStyle(fontSize: 25, fontWeight: FontWeight.w400,
//                          color: Color.fromARGB(255, 56, 57, 57)),),
//                           ],
//                         ),
//                          const SizedBox(height: 60,),
              
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text("Keterangan", 
//                             style: TextStyle(
//                               fontSize: 15, fontWeight: FontWeight.w700,
//                               color: Color.fromARGB(255, 46, 46, 46))
//                               ),
//                               const SizedBox(height: 20,),
//                               Container(
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(7),
//                                   color: Colors.white,
//                                   boxShadow: [ 
//                                     BoxShadow(
//                                     color: Color.fromARGB(62, 82, 81, 81),
//                                     offset: Offset(2, 5),
//                                     blurRadius: 9
//                                   )
//                                   ]
//                                 ),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: "Pilih",
//                                     hintStyle: TextStyle(fontSize: 14, ),
//                                     contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
//                                   ),
//                                 ),
//                                 ),
                                
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 10,),
              
                        
//                         SizedBox(height: 7,),
//                          Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                               const SizedBox(height: 10,),
//                              Container(
//                               width: double.infinity,
                            
//                               child: ElevatedButton(
//                                 onPressed:(){
//                                   Navigator.push(
//                                     context, 
//                                     MaterialPageRoute(
//                                       builder: (context) => HalamanUtama(),
//                                        ),
//                                         );
//                                 }, child: Text('Kirim')
//                               )
//                            ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//     );
//   }
// }

class keterangan extends StatefulWidget {
  const keterangan({super.key});

  @override
  State<keterangan> createState() => _keteranganState();
}

class _keteranganState extends State<keterangan> {
  pilihan? selectedPilih;
  List <pilihan> pilihans = [        
    pilihan('Sakit'),
    pilihan('Ijin')
  ];
  List <DropdownMenuItem> generateItems(List<pilihan> pilihans ){
    List <DropdownMenuItem> items = [];
    for (var item in pilihans) {
      items.add(DropdownMenuItem(
        child: Text(item.pilih),
        value: item,
        ));
        
    }
    return items;
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keterangan'
        ),
        ),
        body: Column(
          children: <Widget>[
            DropdownButton(
              
              hint: Text('Pilih'),
              value: selectedPilih,
              items: generateItems(pilihans),
              onChanged: (item) {
                setState(() {
                  selectedPilih = item;
                });
              },
            ),
            Text((selectedPilih != null) ? selectedPilih!.pilih : "")
          ],
        ),
    );
  }
}

class pilihan {
  String pilih;
  pilihan(this.pilih);
}