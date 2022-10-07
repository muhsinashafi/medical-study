import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/widget/college_about_container.dart';
import 'package:medical_studies/widget/college_detail_container.dart';
import 'package:medical_studies/widget/college_programmerse.dart';

import '../widget/college_detail_button.dart';
import '../widget/college_last_button.dart';
import '../widget/college_success_story.dart';
import 'location_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CollegeDetails extends StatelessWidget {
  const CollegeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LocationScreen()));
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CollegeDetailsContainer(),
                    SizedBox(
                      height: 10,
                    ),
                    CollegeDetailsButton(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "About MIT Manipal",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Lorem ipsum dolor sit amet consectetur adipisicing molestiae guas vel sint commodi repudiandae cons numpuam blanditis harum quisquameius sed odit optio, eaque rerum! provident similique accusantiu obcaecati tenetur iure eius earum ut",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400),
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const CollegeAboutContainer(),
                    SizedBox(
                      height: 20,
                    ),
                    CollegeSuccessStory(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4BB4C8)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Text(
                        "MIT Manipal Popular Programmer ",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const CollegeProgrammer(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: size.height / 3.5,
                      width: size.width / 1.2,
                      padding: EdgeInsets.only(
                          left: 15, bottom: 15, right: 15, top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey)
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "B.Tech Lateral Entry",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "No. of Courses: 2 Courses(126 Seats) ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Eligibility Criteria:",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AutoSizeText(
                            "Lorem ipsum dolor sit amet consectetur adipisicing molestiae guas velsint commodi repudiandae cons numpuam blanditis harum quisquameius sed odit optio,eaque rerum! provident similique accusantiu obcaecati tenetur iure eius.",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff707070)),
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4BB4C8)),
                        )
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            CollegeLastButton(),
          ],
        ),
      ),
    );
  }
}
