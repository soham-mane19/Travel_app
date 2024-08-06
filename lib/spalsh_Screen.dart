
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/onboard1.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
   void initState(){
    super.initState();
    timer();
   }
   void timer(){
  Timer(const Duration(seconds: 10), () { 
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
       return const Onboard1();
    },));
  });

   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor:const  Color.fromRGBO(13, 110, 253, 1),
        body: Center(
          child: Text("Travenor",style: GoogleFonts.fahkwang(fontSize:34,fontWeight:FontWeight.w400,color:const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),

    );
  }
}