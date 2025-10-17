import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/onboard3.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(children: [
        Column(
          children: [
            Container(
              height: 444,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('assets/explore2.png'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 35,
            ),
            Text('It’s a big world out',
                style: GoogleFonts.aclonica(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(27, 30, 40, 1))),
            const SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'there go ',
                  style: GoogleFonts.aclonica(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(27, 30, 40, 1))),
              TextSpan(
                  text: ' explore',
                  style: GoogleFonts.aclonica(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 112, 41, 1))),
            ])),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("To get the best of your adventure ",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("you just need to leave and go where",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("you like. we are waiting for you",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1))),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    Container(
                      height: 7,
                      width: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromRGBO(202, 234, 255, 1),
                      ),
                    ),
                     const SizedBox(
                      width: 4,
                    ),
                     Container(
                      height: 7,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromRGBO(13, 110, 253, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                     
                    Container(
                      height: 7,
                      width: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromRGBO(202, 234, 255, 1),
                      ),
                    ),


                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style:const  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(13, 110, 253, 1)),
                      minimumSize: MaterialStatePropertyAll(Size(335, 56),
                      
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))))
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                           return  const Onboard3();
                        },));
                      },
                     child:   Text("Next",   style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1))),
         
       ),
      
                  ],
                )
               
              ],
            ),
          ],
        ),
        Positioned(top: 555, right: 115, child: Image.asset('assets/vec.png')),
      Positioned(
          top: 50,
          right: 20,
          child: GestureDetector(
            onTap: () {
              
            },
            child: Text("Skip",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(202, 234, 255, 1))),
          ),
        ),
      ]),
    );
  }
}