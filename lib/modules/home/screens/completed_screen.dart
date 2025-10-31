import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/core/widgets/custom_bottom_nav_bar.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  int index = 2;
  List<Map<String, dynamic>> searchList = [
    {
      'image': 'assets/nalandari.png',
      'name': 'Niladri Reservoir',
      'location': 'Tekergat, Sunamgnj',
      'price': '894',
    },
    {
      'image': 'assets/caslas.png',
      'name': 'Casalas Tirtugas',
      'location': 'Av Damero, Mexico',
      'price': 894,
    },
    {
      'image': 'assets/Aonang.png',
      'name': 'Aonang Villa',
      'location': 'Bastola, Islampur',
      'price': 761,
    },
    {
      'image': 'assets/rangaoti.png',
      'name': 'Rangauti Resort',
      'location': 'Sylhet, Airport Road',
      'price': 857,
    },
  ];
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: GridView.builder(
                itemCount: searchList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    height: 216,
                    width: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(180, 188, 201, 0.12),
                            blurRadius: 16,
                            spreadRadius: 0,
                            offset: Offset(0, 6))
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(searchList[index]['image']),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(searchList[index]['name'],
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(27, 30, 40, 1))),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color.fromRGBO(125, 132, 141, 1),
                              size: 15,
                            ),
                            Text(searchList[index]['location']!,
                                style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '\$${searchList[index]['price']}/',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(13, 110, 253, 1))),
                          TextSpan(
                              text: 'person',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(13, 110, 253, 1))),
                        ]))
                      ],
                    ),
                  );
                }),
          )
        ]),
      ),
      floatingActionButton: CustomBottomNavBar(currentIndex: 2),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
