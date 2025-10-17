import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/homeScreen.dart';
import 'package:travel_app/serach_screen.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int index = 1;
  List<Map<String, String>> SheduleList = [
    {
      'image': 'assets/nalndari.png',
      'date': '26 January 2022',
      'name': 'Niladri Reservoir',
      'location': 'Tekergat, Sunamgnj'
    },
    {
      'image': 'assets/highrichpark.png',
      'date': '26 January 2022',
      'name': 'High Rech Park',
      'location': 'Zeero Point, Sylhet'
    },
    {
      'image': 'assets/darma.png',
      'date': '26 January 2022',
      'name': 'Darma Reservoir',
      'location': 'Darma, Kuningan'
    },
  ];
  int calIndex = 4;
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Text("Schedule",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1))),
                const Spacer(),
                Image.asset(
                  'assets/Notifications.png',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 148,
              width: double.infinity,
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(180, 188, 201, 0.16),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(0, 6))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text("22 October",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(27, 30, 40, 1))),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      calenderButton(0, 'S', 18),
                      const SizedBox(
                        width: 8,
                      ),
                      calenderButton(1, 'M', 19),
                      const SizedBox(
                        width: 8,
                      ),
                      calenderButton(2, 'T', 20),
                      const SizedBox(
                        width: 8,
                      ),
                      calenderButton(3, 'W', 21),
                      const SizedBox(
                        width: 8,
                      ),
                      calenderButton(4, 'T', 22),
                      const SizedBox(
                        width: 8,
                      ),
                      calenderButton(5, 'F', 23),
                      const SizedBox(
                        width: 8,
                      ),
                      calenderButton(6, 'S', 24),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
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
                IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
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

  Widget calenderButton(int index, String day, int date) {
    return GestureDetector(
      onTap: () {
        setState(() {
          calIndex = index;
        });
      },
      child: Container(
        height: 76,
        width: 44,
        padding: const EdgeInsets.only(top: 9, bottom: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:
              index == calIndex ? const Color.fromRGBO(13, 110, 253, 1) : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(day,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: index == calIndex
                        ? const Color.fromRGBO(208, 217, 231, 1)
                        : const Color.fromRGBO(125, 132, 141, 1))),
            const Spacer(),
            Text("$date",
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: index == calIndex
                        ? const Color.fromRGBO(255, 255, 255, 1)
                        : const Color.fromRGBO(27, 30, 40, 1))),
          ],
        ),
      ),
    );
  }
}
