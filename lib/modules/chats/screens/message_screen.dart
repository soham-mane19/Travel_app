import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:travel_app/modules/home/screens/Intersted_screen.dart';
import 'package:travel_app/modules/chats/screens/Chats.dart';
import 'package:travel_app/modules/home/screens/homeScreen.dart';
import 'package:travel_app/modules/home/screens/profile_screen.dart';
import 'package:travel_app/modules/home/screens/completed_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        body: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Text("Messages",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(27, 30, 40, 1))),
                  const Spacer(),
                  const Icon(Icons.more_vert)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text("Messages",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(27, 30, 40, 1))),
                  const Spacer(),
                  const Icon(Icons.edit_square)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search for chats & messages',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1)),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return const Chats();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(3),
                  height: 57,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset('assets/sajib.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Sajib  Rahman",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 1))),
                              const SizedBox(
                                width: 110,
                              ),
                              const Icon(
                                Icons.check,
                                color: Color.fromRGBO(125, 132, 141, 1),
                                size: 25,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("09:46",
                                  style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          125, 132, 141, 1))),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text("Hi, John! 👋 How are you doing?",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(125, 132, 141, 1))),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                height: 57,
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset('assets/andaom.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Adom Shafi",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            const SizedBox(
                              width: 150,
                            ),
                            Image.asset('assets/seen.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("09:46",
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text("Typing...",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(13, 110, 253, 1))),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 78,
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset('assets/Hr.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("HR Rumen",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            const SizedBox(
                              width: 90,
                            ),
                            Image.asset('assets/deleivereed.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("Yesterday",
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'You: Cool!     ☺️ Let’s meet at 18:00 \n',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(125, 132, 141, 1))),
                          TextSpan(
                              text: 'near the traveling!',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(125, 132, 141, 1))),
                        ])),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 78,
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset('assets/Anjelina.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Anjelina",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            const SizedBox(
                              width: 160,
                            ),
                            const Icon(
                              Icons.check,
                              color: Color.fromRGBO(125, 132, 141, 1),
                              size: 25,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("09:46",
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'You: Hey, will you come to the\n',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(125, 132, 141, 1))),
                          TextSpan(
                              text: 'party on Saturday?',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(125, 132, 141, 1))),
                        ])),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                height: 57,
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset('assets/alexa.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Alexa Shorna",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            const SizedBox(
                              width: 123,
                            ),
                            Image.asset('assets/seen.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("05:52",
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text("Thank you for coming! Your or...",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1))),
                      ],
                    )
                  ],
                ),
              ),
            
            ]
            )
            ),
             floatingActionButton: 
   CustomBottomNavBar(currentIndex: 3),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
 
            );
  }
}
