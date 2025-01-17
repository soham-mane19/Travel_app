import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
    TextEditingController emailCon = TextEditingController();

  TextEditingController passwordCon = TextEditingController();
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign up now",
                  style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(27, 30, 40, 1)))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Please fill the details and create account",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(125, 132, 141, 1)))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Leonardo Smith',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(27, 30, 40, 1)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14)),
                      fillColor: const Color.fromRGBO(247, 247, 249, 1),
                      filled: true),
                ),
                 const SizedBox(
                  height: 15,
                ),
                  TextFormField(
                    controller: emailCon,
                  decoration: InputDecoration(
                      hintText: 'www.uihut@gmail.com',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(27, 30, 40, 1)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14)),
                      fillColor: const Color.fromRGBO(247, 247, 249, 1),
                      filled: true),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordCon,
                  obscureText: visibility,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: '*******',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(125, 132, 141, 1)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14)),
                      fillColor: const Color.fromRGBO(247, 247, 249, 1),
                      filled: true,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visibility = !visibility;
                            });
                          },
                          icon: Icon(visibility
                              ? Icons.visibility_off
                              : Icons.visibility))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                 
                  children: [
                  Text("Password must be 8 character",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(125, 132, 141, 1))),
                    
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(13, 110, 253, 1)),
                      minimumSize: MaterialStatePropertyAll(
                        Size(double.infinity, 56),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16))))),
                  onPressed: () {
                  setData();
                  
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const Signin();
                      
                      },
                    ));
                  },
                  child: Text("Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1))),
                ),
                const SizedBox(
                  height: 35,
                ),
               
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Or connect',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(112, 123, 129, 1))),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('assets/icon.png')],
                ),
              ],
            ),
          
        
      
          )
        ]
      )
    );
  }
  Future setData()async{
    SharedPreferences pref =  await SharedPreferences.getInstance();
    pref.setString('email', emailCon.text);
    pref.setString('password', passwordCon.text);
  }
}
