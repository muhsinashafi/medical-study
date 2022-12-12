import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/location_screen.dart';
import 'package:medical_studies/screen/type_screen.dart';

import '../screen/college_detail_screen.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: size.height / 4.5,
              width: size.width / 1,
              padding: const EdgeInsets.only(top: 10),
              color: const Color(0xff2A8B9E),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Learn from India's Top Ranked",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    "Institute",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    "choose a category to start exploring",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height / 5,
                  width: size.width / 2.4,
                  margin: const EdgeInsets.only(top: 100, bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                        )
                      ]),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LocationScreen(
                                          data: 'new data',
                                        )));
                          },
                          child: Image.asset("assets/category1.png")),
                      Text(
                        "Locations",
                        style: GoogleFonts.poppins(fontSize: 12, height: 2),
                      )
                    ],
                  )),
                ),
                Container(
                  height: size.height / 5,
                  width: size.width / 2.4,
                  margin: const EdgeInsets.only(top: 100, left: 20, bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                        )
                      ]),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CollegeDetails()));
                          },
                          child: Image.asset("assets/category2.png")),
                      Text(
                        "Major",
                        style: GoogleFonts.poppins(fontSize: 12, height: 2),
                      )
                    ],
                  )),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height / 5,
              width: size.width / 2.4,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                    )
                  ]),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TypeScreen()));
                      },
                      child: Image.asset("assets/category3.png")),
                  Text(
                    "Type",
                    style: GoogleFonts.poppins(fontSize: 12, height: 2),
                  )
                ],
              )),
            ),
            Container(
              height: size.height / 5,
              width: size.width / 2.4,
              margin: const EdgeInsets.only(left: 20, bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                    )
                  ]),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CollegeDetails()));
                      },
                      child: Image.asset("assets/category4.png")),
                  Text(
                    "Campus Life",
                    style: GoogleFonts.poppins(fontSize: 12, height: 2),
                  )
                ],
              )),
            ),
          ],
        )
      ],
    );
  }
}
