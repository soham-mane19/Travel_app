import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/Calender.dart';
import 'package:travel_app/homeScreen.dart';
import 'package:travel_app/message_screen.dart';
import 'package:travel_app/serach_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 55, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Text("Profile",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1))),
                const Spacer(),
                const Icon(
                  Icons.edit_square,
                  color: Color.fromRGBO(13, 110, 253, 1),
                  size: 22,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset('assets/profile.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Leonardo",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(27, 30, 40, 1)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Leonardo@gmail.com",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(125, 132, 141, 1)),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 78,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(189, 198, 211, 0.12),
                    spreadRadius: 0,
                    blurRadius: 16,
                    offset: Offset(0, 6),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Reward Points",
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "360",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Travel Trips",
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "238",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Bucket List",
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "473",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 280,
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 16,
                        offset: Offset(0, 6),
                        color: Color.fromRGBO(189, 198, 211, 0.12)),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.bookmark_outline,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Bookmarked",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1)),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(247, 247, 249, 1),
                        width: 1
                      )
                    ),
                  ),
 Row(
                    children: [
                      Image.asset('assets/Group.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Previous Trips",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1)),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(247, 247, 249, 1),
                        width: 1
                      )
                    ),
                  ),
                   Row(
                    children: [
                      const Icon(
                        Icons.settings_outlined,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Settings",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1)),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(247, 247, 249, 1),
                        width: 1
                      )
                    ),
                  ),
                   Row(
                    children: [
                      Image.asset('assets/Version.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Version",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1)),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(247, 247, 249, 1),
                        width: 1
                      )
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
        floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 17, right: 10, top: 10),
        height: 80,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(65),
              topRight: Radius.circular(65),
            ),
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(175, 184, 198, 0.12),
                offset: Offset(-6, 0),
                blurRadius: 16,
                spreadRadius: 16,
              )
            ]),
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      },));
                    },
                    icon: Icon(
                      Icons.home,
                      color: index == 0
                          ? const Color.fromRGBO(13, 110, 253, 1)
                          :null,
                    )),
                Text("Home",
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: index == 0
                            ? const Color.fromRGBO(13, 110, 253, 1)
                            : const Color.fromRGBO(125, 132, 141, 1)))
              ],
            ),
            const SizedBox(
              width: 25,
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                         return  const Calendar();
                      }));
                    },
                    icon:  Icon(Icons.calendar_month_outlined, color: index == 1
                          ? const Color.fromRGBO(13, 110, 253, 1)
                          :null,
                    )),
                Text(
                  "Calendar",
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: index == 1
                            ? const Color.fromRGBO(13, 110, 253, 1)
                            : const Color.fromRGBO(125, 132, 141, 1)),
                )
              ],
            ),
            const SizedBox(
              width: 25,
            ),
            GestureDetector(
              onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return  const SearchScreen();
              },));
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(13, 110, 253, 1)),
                child: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 25,
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Column(
              children: [
                IconButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const MessageScreen();
                  },));
                }, icon:  Icon(Icons.message,  color: index == 3
                            ? const Color.fromRGBO(13, 110, 253, 1)
                            :null)),
                Text("Messages",
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                          color: index == 3
                            ? const Color.fromRGBO(13, 110, 253, 1)
                            : const Color.fromRGBO(125, 132, 141, 1)))
              ],
            ),
            const SizedBox(
              width: 25,
            ),
            Column(
              children: [
                IconButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const  Profile();
                  }));
                }, icon: Icon(Icons.person,color: index == 4
                            ? const Color.fromRGBO(13, 110, 253, 1)
                            :null)),
                Text("Profile",
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: index == 4
                            ? const Color.fromRGBO(13, 110, 253, 1)
                            : const Color.fromRGBO(125, 132, 141, 1)))
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
 
    );
  }
}
