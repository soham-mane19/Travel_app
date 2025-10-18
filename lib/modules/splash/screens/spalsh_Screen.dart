
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/core/services/shared_pref_service.dart';
import 'package:travel_app/modules/auth/screens/onboarding/onboard1.dart';
import 'package:travel_app/modules/auth/screens/signin.dart';
import 'package:travel_app/modules/home/screens/homeScreen.dart';


class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
   void initState(){
    super.initState();
    _starttimer();
   }
   void _starttimer()async{

bool hasSeen  = await SharedPrefService.hasSeenOnboarding();
bool hasLogin =   FirebaseAuth.instance.currentUser!=null;
  Timer(const Duration(seconds: 5), () { 
   if(!hasSeen){
Navigator.of(context).push(MaterialPageRoute(builder: (context) {
       return const Onboard1();
    },));
   }
    else{

      if(hasLogin){
         
         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
       return const HomeScreen();
    },));
            
      }
      else{
 Navigator.of(context).push(MaterialPageRoute(builder: (context) {
       return const Signin();
    },));
      }
   
   }
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