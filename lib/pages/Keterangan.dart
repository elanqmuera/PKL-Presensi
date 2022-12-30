import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Keterangan extends StatelessWidget {
  const Keterangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children:  <Widget> [
          Flexible(
            flex : 1,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin : Alignment.center,
                  end : Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.blue,
                    Colors.white70,
                  ]
                  ),
              ),
            ),
            ),
            
        ],
      ),
    );
  }
}