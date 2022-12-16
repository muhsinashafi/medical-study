import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeProgrammer extends StatelessWidget {
  const CollegeProgrammer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      // scrollDirection: Axis.vertical,
      children: [
        buildProgrammer(
          size,
          "B.Tech",
          "No. of Courses: ",
          "2 Courses",
          "(126 Seats) ",
          "Eligibility Criteria:",
          "Lorem ipsum dolor sit amet consectetur adipisicing molestiae guas velsint commodi repudiandae cons numpuam blanditis harum quisquameius sed odit optio,eaque rerum! provident similique accusantiu obcaecati tenetur iure eius.",
        ),
        const SizedBox(
          height: 20,
        ),
        buildProgrammer(
          size,
          "B.Tech",
          "No. of Courses: ",
          "2 Courses",
          "(126 Seats) ",
          "Eligibility Criteria:",
          "Lorem ipsum dolor sit amet consectetur adipisicing molestiae guas velsint commodi repudiandae cons numpuam blanditis harum quisquameius sed odit optio,eaque rerum! provident similique accusantiu obcaecati tenetur iure eius.",
        ),
      ],
    );
  }

  Container buildProgrammer(Size size, String courseName, String courseNo,
      String number, String numberofseats, String eligibility, String text) {
    return Container(
      height: 210,
      //size.height / 3.4,
      width: size.width / 1.1,
      padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(blurRadius: 5, color: Colors.grey)],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            courseName,
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                courseNo,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 12),
              ),
              Text(
                number,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color(0xff4BB4C8)),
              ),
              Text(
                numberofseats,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            eligibility,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color(0xff686868)),
          ),
          const SizedBox(
            height: 10,
          ),
          AutoSizeText(
            text,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color(0xff707070)),
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
