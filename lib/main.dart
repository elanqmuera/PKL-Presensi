import 'package:flutter/services.dart';
import 'package:tsel/main_page2.dart';
import 'package:tsel/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:introduction_screen/introduction_screen.dart';


void main() 
{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktik Kerja Lapangan',
      
      theme: ThemeData(
        // primarySwatch: Colors.blueGrey,
      ),
      home: const TampilanAwal(),
    );
  }
}

class TampilanAwal extends StatefulWidget {
  const TampilanAwal({super.key});

  @override
  State<TampilanAwal> createState() => _TampilanAwalState();
}

class _TampilanAwalState extends State<TampilanAwal> {
  @override
  Widget build(BuildContext context) {
    const _pageDecoration = const PageDecoration(
      titleTextStyle : TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      bodyTextStyle: TextStyle(fontSize: 14),
      
      bodyPadding: EdgeInsets.all(4)
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: ' PT Jerbee Indonesia',
          body: 'Selamat datang di aplikasi PKLKU lakukan praktik kerja lapangan di PT Jerbee Indonesia.',
          image : Image.asset('assets/image/pklku.png',
          width: 350,),
          decoration: _pageDecoration
        
        ),
        PageViewModel(
          title: 'Penjadwalan dari genggaman',
          body: 'Lakukan presensi dan pengajuan praktik kerja lapangan cukup dengan smartphone anda.',
          image : Image.asset('assets/image/Phone.png',
          width: 350,),
          decoration: _pageDecoration
        
        ),
        PageViewModel(
          title: 'Absensi langsung di aplikasi',
          body: 'Isi daftar hadir anda menggunakan scan QR Code di aplikasi.',
          image : Image.asset('assets/image/qr-code.png',
          width: 350,),
          decoration: _pageDecoration,

          footer: ElevatedButton(
            onPressed: () {
            Navigator.push(
             context, 
              MaterialPageRoute(
                  builder: (context) => MainPage(),
                 ),
             );
            },
            child: Text('Lanjutkan'),
            )
        
        )
      ],
      onDone: () {

      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      dotsFlex: 3,
      nextFlex: 1,
      skipOrBackFlex: 1,

      back: Icon(Icons.arrow_back),
      skip: Text('Skip', style : TextStyle(fontWeight: FontWeight.bold)),
      next: Icon(Icons.arrow_forward),
      done : Text('Done', style: TextStyle(fontWeight: FontWeight.bold),),
      dotsDecorator: DotsDecorator(
       size: Size(10, 10),
       color: Colors.grey,
       activeSize: Size(22, 10),
       activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25)
          )
          )
      ),
    );
  }
}

