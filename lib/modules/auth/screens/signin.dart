import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/modules/home/screens/homeScreen.dart';

import 'package:travel_app/modules/auth/screens/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  bool isLoading = false;
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sign in now",
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
                Text("Please sign in to continue our app",
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
                    controller: emailCon,
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
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
                        hintText: 'Enter Password',
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text("Forget Password?",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(13, 110, 253, 1))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  isLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(13, 110, 253, 1)),
                              minimumSize: MaterialStatePropertyAll(
                                Size(double.infinity, 56),
                              ),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))))),
                          onPressed: () {
                            loginUser();
                          },
                          child: Text("Sign In",
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
                      Text('Don’t have an account?',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(112, 123, 129, 1))),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const Signup();
                            },
                          ));
                        },
                        child: Text(' Sign up',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(13, 110, 253, 1))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
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
          ],
        ),
      ),
    );
  }

  void loginUser() async {
    isLoading = true;
    setState(() {});
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailCon.text, password: passwordCon.text);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login successfully')),
      );
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const HomeScreen();
        },
      ));
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided.';
      } else {
        message = e.message ?? 'An error occurred.';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }
}
