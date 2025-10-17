import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Viewpage extends StatelessWidget {
  const Viewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/view.png'), fit: BoxFit.cover)),
          child: Stack(children: [
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
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )),
                  const SizedBox(
                    width: 120,
                  ),
                  Text("View",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromRGBO(255, 255, 255, 1))),
                ],
              ),
            ),
            Positioned(
                top: 144, right: 20, child: Image.asset('assets/la.png')),
            Positioned(
                top: 385, left: 20, child: Image.asset('assets/lemon.png')),
                 Positioned(
                top: 620, left: 20, 
                right: 20,
                child: Container(
                  padding:  const EdgeInsets.all(20),
              height: 204,
            
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(62, 62, 62, 0.9),
              ),
              child: Column(
                children: [
Row(
  children: [
     Text("Niladri Reservoir",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1))
                          ),
                          const Spacer(),
                        const   Icon(Icons.star,color: Color.fromRGBO(255, 211, 54, 1),size: 15,),
                        Text("4.7",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 1)),

                          ),

  ],
),
const SizedBox(
  height: 10,
),
  Row(
                                      children: [
                                       const Icon(Icons.location_on_outlined,color: Color.fromRGBO(255, 255, 255, 1),size: 17,),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text("Tekergat, Sunamgnj",
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                   255, 255, 255, 1),),),

                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                     Row(
                                      children: [
                                       const Icon(Icons.watch_later_outlined,color: Color.fromRGBO(255, 255, 255, 1),size: 17,),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text("45 Minutes",
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                   255, 255, 255, 1),),),

                                      ],
                                    ),
                                    const Spacer(),
                                   ElevatedButton(
                                    style:const  ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(13, 110, 253, 1)),
                                      minimumSize: MaterialStatePropertyAll(Size(double.infinity, 56),),
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))))
                                    ),
                                    onPressed: (){}, child:  Text("See On The Map",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: const Color.fromRGBO(
                                                   255, 255, 255, 1),),),) 


                ],
              ),
              ),
              ),
                Positioned(
                                    top: 673,
                                    right: 70,
                                    child: Image.asset('assets/student1.png')),
                                Positioned(
                                    top: 673,
                                    right: 57,
                                    child: Image.asset('assets/student2.png')),
                                Positioned(
                                    top: 673,
                                    right: 44,
                                    child: Image.asset('assets/student3.png')),
                                Positioned(
                                    top: 673,
                                    right: 31,
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
                                    )
                                    ),

          ]
          )
          ),

    ]
    ),
    
    );
  }
}
