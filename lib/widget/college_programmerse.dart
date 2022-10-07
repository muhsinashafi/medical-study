import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeProgrammer extends StatelessWidget {
  const CollegeProgrammer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 3.5,
      width: size.width / 1.2,
      padding: EdgeInsets.only(left: 15, bottom: 15, right: 15, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "B.Tech",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "No. of Courses: 2 Courses(126 Seats) ",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Eligibility Criteria:",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
          AutoSizeText(
            "Lorem ipsum dolor sit amet consectetur adipisicing molestiae guas velsint commodi repudiandae cons numpuam blanditis harum quisquameius sed odit optio,eaque rerum! provident similique accusantiu obcaecati tenetur iure eius.",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12),
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
