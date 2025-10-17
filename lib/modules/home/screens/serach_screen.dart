import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/modules/home/screens/Calender.dart';
import 'package:travel_app/modules/home/screens/homeScreen.dart';
import 'package:travel_app/modules/chats/screens/message_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Text("Search",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1))),
                const Spacer(),
                Text("Cancel",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(13, 110, 253, 1))),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 48,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search Places',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(125, 132, 141, 1)),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 24,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(125, 132, 141, 0.2),
                          width: 1.5),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.mic)
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Search Places",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(27, 30, 40, 1))),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: searchList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.8
                      ),
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
                          RichText(text: 
                          TextSpan(
                            children: [
                               TextSpan(
                                text: '\$${searchList[index]['price']}/',
                                style:GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          13, 110, 253, 1))
                               ),
                                TextSpan(
                                text: 'person',
                                style:GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          13, 110, 253, 1))
                               ),

                            ]
                          ))
                           
                        ],
                      ),
                    );
                  }
                  ),
            )
          ]
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
                }, icon: const Icon(Icons.message)),
                Text("Messages",
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1)))
              ],
            ),
            const SizedBox(
              width: 25,
            ),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
                Text("Profile",
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1)))
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
 
        );
  }
}
