import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:travel_app/modules/home/screens/Intersted_screen.dart';
import 'package:travel_app/modules/home/screens/details.dart';
import 'package:travel_app/modules/home/screens/profile_screen.dart';
import 'package:travel_app/modules/home/widgets/alert_box.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  late String userName;

  @override
  void initState(){
  super.initState();
userName = FirebaseAuth.instance.currentUser?.displayName ?? 'UserName';
  print('user name is :: $userName');
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/leonardo.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(userName,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(27, 30, 40, 1))),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                             
                            showLogoutDialog(context);

                          },
                          child: Icon(Icons.logout),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/Notifications.png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("Explore the",
                        style: GoogleFonts.poppins(
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(46, 50, 62, 1))),
                    const SizedBox(
                      height: 5,
                    ),
                    RichText(
                        text: TextSpan(
                          children: [
                      TextSpan(
                          text: 'Beautiful',
                          style: GoogleFonts.poppins(
                              fontSize: 38,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(27, 30, 40, 1))),
                      TextSpan(
                          text: ' world!',
                          style: GoogleFonts.poppins(
                              fontSize: 38,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(255, 112, 41, 1))),
                    ])),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text("Best Destination",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(27, 30, 40, 1))),
                        const Spacer(),
                        Text("View all",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(13, 110, 253, 1)))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return const Details();
                              }));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 384,
                              width: 268,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(180, 188, 201, 0.12),
                                        blurRadius: 16,
                                        offset: Offset(0, 6))
                                  ]),
                              child: Stack(children: [
                                Column(
                                  children: [
                                    Image.asset('assets/naldari.png'),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Niladri Reservoir",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(
                                                  27, 30, 40, 1)),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.star,
                                          color: Color.fromRGBO(255, 211, 54, 1),
                                        ),
                                        Text("4.7",
                                            style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    27, 30, 40, 1)))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text("Tekergat, Sunamgnj",
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    125, 132, 141, 1)))
                                      ],
                                    )
                                  ],
                                ),
                                Positioned(
                                    top: 332,
                                    right: 50,
                                    child: Image.asset('assets/student1.png')),
                                Positioned(
                                    top: 332,
                                    right: 37,
                                    child: Image.asset('assets/student2.png')),
                                Positioned(
                                    top: 332,
                                    right: 24,
                                    child: Image.asset('assets/student3.png')),
                                Positioned(
                                    top: 332,
                                    right: 11,
                                    child: Container(
                                      height: 24,
                                      width: 24,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(229, 244, 255, 1)),
                                      child: Text("+50",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  27, 30, 40, 1))),
                                    )),
                                Positioned(
                                    top: 10,
                                    right: 9,
                                    child: Container(
                                        height: 34,
                                        width: 44,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromRGBO(27, 30, 40, 0.3)),
                                        child: const Icon(
                                          Icons.bookmark_outline,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                              ]),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 384,
                            width: 268,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                boxShadow: const [
                                  BoxShadow(
                                      color:
                                          Color.fromRGBO(180, 188, 201, 0.12),
                                      blurRadius: 16,
                                      offset: Offset(0, 6))
                                ]),
                            child: Stack(children: [
                              Column(
                                children: [
                                  Container(
                                    height: 286,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                              'assets/mainplace.jpg',
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Darma Reservoir",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                27, 30, 40, 1)),
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(255, 211, 54, 1),
                                      ),
                                      Text("4.7",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  27, 30, 40, 1)))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text("Darma, Kuningan",
                                          style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  125, 132, 141, 1)))
                                    ],
                                  )
                                ],
                              ),
                              Positioned(
                                  top: 332,
                                  right: 50,
                                  child: Image.asset('assets/student1.png')),
                              Positioned(
                                  top: 332,
                                  right: 37,
                                  child: Image.asset('assets/student2.png')),
                              Positioned(
                                  top: 332,
                                  right: 24,
                                  child: Image.asset('assets/student3.png')),
                              Positioned(
                                  top: 332,
                                  right: 11,
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(229, 244, 255, 1)),
                                    child: Text("+50",
                                        style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                27, 30, 40, 1))),
                                  )),
                              Positioned(
                                  top: 10,
                                  right: 9,
                                  child: Container(
                                      height: 34,
                                      width: 44,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(27, 30, 40, 0.3)),
                                      child: const Icon(
                                        Icons.bookmark_outline,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ))),
                            ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
        Positioned(
            top: 235, right: 110, child: Image.asset('assets/vector1.png'))
      ]),
      floatingActionButton:CustomBottomNavBar(currentIndex: 0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  
}
