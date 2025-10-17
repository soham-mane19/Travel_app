import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/modules/home/screens/Viewpage.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            height: 410,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/details.png'),
                    fit: BoxFit.cover)),
            child: Stack(clipBehavior: Clip.none, children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 13, right: 13),
                child: Row(
                  children: [
                    Container(
                        height: 34,
                        width: 44,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(27, 30, 40, 0.3)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();

                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        )),
                    const SizedBox(
                      width: 120,
                    ),
                    Text("Details",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(255, 255, 255, 1))),
                    const Spacer(),
                    Container(
                        height: 34,
                        width: 44,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(27, 30, 40, 0.3)),
                        child: const Icon(
                          Icons.bookmark_outline,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )),
                  ],
                ),
              ),
              Positioned(
                top: 350,
                child: Container(
                  height: 600,
                  width: 410,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 45, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Niladri Reservoir",
                                    style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            27, 30, 40, 1))),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text("Tekergat, Sunamgnj",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            125, 132, 141, 1))),
                              ],
                            ),
                            const Spacer(),
                            Image.asset('assets/detailstu.png'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Tekergat",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(125, 132, 141, 1)),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color.fromRGBO(255, 211, 54, 1),
                              size: 18,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text("4.7",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(27, 30, 40, 1))),
                            Text("(2498)",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                            const Spacer(),
                            Text("\$59/",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(13, 110, 253, 1))),
                            Text("Person",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        125, 132, 141, 1))),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/photo1.png'),
                            Image.asset('assets/photo2.png'),
                            Image.asset('assets/photo3.png'),
                            Image.asset('assets/photo4.png'),
                            Image.asset('assets/photo5.png'),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                          Text("About Destination",
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 1))),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                           Text("You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(125, 132, 141, 1))),
                                          RichText(text: 
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'holiday to the Greek ETC...',
                                                style:  GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(125, 132, 141, 1))
                                              ),
                                                TextSpan(
                                                text: ' Read More',
                                                style:  GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(255, 112, 41, 1))
                                              ),

                                            ]
                                          )
                                          ),
                                          
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 360,
                left: 190,
                child: Container(
                  height: 5,
                  width: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromRGBO(221, 224, 228, 0.9)),
                ),
              )
            ]))
      ]),
      floatingActionButton:   Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
        child: ElevatedButton(
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                       return const  Viewpage();
                  }));
                    },
                    child: Text("Book Now",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1))),
                  ),
      ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
