import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:travel_app/modules/home/screens/homeScreen.dart';
import 'package:travel_app/modules/home/screens/completed_screen.dart';

class InterstedScreen extends StatefulWidget {
  const InterstedScreen({super.key});

  @override
  State<InterstedScreen> createState() => _InterstedScreenState();
}

class _InterstedScreenState extends State<InterstedScreen> {
List<Map<String,dynamic>> SheduleList = [];
 
  
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
        child: Column(
          children: [
           
          
            Row(
              children: [
                Text("My Schedule",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(27, 30, 40, 1))),
                const Spacer(),
                Text("View all",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(13, 110, 253, 1))),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: SheduleList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      padding:const  EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(180, 188, 201, 0.12),
                              blurRadius: 16,
                              spreadRadius: 0,
                              offset: Offset(0, 6),
                            )
                          ]),
                          child: Row(
                            children: [
                             Image.asset(SheduleList[index]['image']!),
                             const SizedBox(
                              width: 10,
                             ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                  children: [
                                  const   Icon(Icons.calendar_month_outlined,   color: Color.fromRGBO(125, 132, 141, 1)),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                      Text(SheduleList[index]['date']!,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1))),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),

                                Text(SheduleList[index]['name']!,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1))
                        ),
                        const SizedBox(
                          height: 5,
                        )  ,
                        Row(
                          children: [
                           const  Icon(Icons.location_on_outlined,   color:  Color.fromRGBO(125, 132, 141, 1)),
                            const SizedBox(
                                      width: 5,
                                    ),
                              Text(SheduleList[index]['location']!,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1))),
                          ],
                        )
                        ],
                              ),
                              const Spacer(),
                             const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_forward_ios,   color:  Color.fromRGBO(125, 132, 141, 1),size: 15,)
                                ],
                              )
                            ],
                          ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
       floatingActionButton:CustomBottomNavBar(currentIndex: 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
 
    );
  }

}
