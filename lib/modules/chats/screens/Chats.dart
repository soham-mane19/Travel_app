import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        body: Stack(children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 55, left: 20, right: 20, bottom: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Column(
                    children: [
                      Text("Sajib Rahman",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(27, 30, 40, 1))),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Active Now",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(25, 176, 0, 1)))
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 44,
                    width: 44,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                    child: const Icon(
                      Icons.phone,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Today",
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(125, 132, 141, 1)))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 38,
                        width: 122,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(229, 244, 255, 1),
                        ),
                        child: Row(
                          children: [
                            Text("Hello!",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("9:24",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/seen.png')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 115,
                          width: 253,
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              color: const Color.fromRGBO(229, 244, 255, 1)),
                          child: Column(
                            children: [
                              Text(
                                  "Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 1))),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("9:24",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              125, 132, 141, 1))),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('assets/deleivereed.png')
                                ],
                              )
                            ],
                          )),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 85,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 38,
                        width: 122,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Row(
                          children: [
                            Text("Hello!",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("9:34",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/seen.png')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 258,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            color: Color.fromRGBO(255, 255, 255, 1)),
                        child: Row(
                          children: [
                            Text("I’m very glab you like it👍",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("9:35",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/seen.png')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 78,
                        width: 258,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          children: [
                            Text(
                                "We are arriving today at 01:45, will someone be at home?",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("9:37",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            125, 132, 141, 1))),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset('assets/seen.png')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(229, 244, 255, 1),
                    ),
                    child: Row(
                      children: [
                        Text("I will be at home",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(27, 30, 40, 1))),
                        const SizedBox(
                          width: 7,
                        ),
                        Text("9:39",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1))),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/deleivereed.png')
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 275,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type you message',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1)),
                        suffixIcon: const Icon(Icons.attach_file),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        fillColor: const Color.fromRGBO(255, 255, 255, 1),
                        filled: true,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(13, 110, 253, 1),
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  )
                ],
              )
            ]),
          ),
          Positioned(
              top: 433, left: 32, child: Image.asset('assets/chat1.png')),
          Positioned(top: 515, left: 32, child: Image.asset('assets/chat2.png'))
        ]));
  }
}
