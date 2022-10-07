import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeDetailsContainer extends StatelessWidget {
  const CollegeDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.5,
      width: size.width / 1.1,
      padding: EdgeInsets.only(top: 50, bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(
              image: AssetImage(
                "assets/image13.png",
              ),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Text(
            "MIT Manipal - Manipal",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
          ),
          Text(
            "Institute of Technology",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "6 Month Decicated Placment",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
          ),
          Text(
            "Guaranteed Job Interviews*",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: size.height / 19,
            width: size.width / 4.5,
            padding: EdgeInsets.only(right: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    iconSize: 20,
                    onPressed: (() {}),
                    icon: Icon(Icons.star_border)),
                Text(
                  "4.56k",
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: Color(0xff2A8B9E)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: size.height / 15,
            width: size.width / 1.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff2A8B9E),
            ),
            child: Center(
                child: Text(
              "Download Brochure",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on_sharp),
                color: Colors.white,
              ),
              Text(
                "100 church street SE, Minneapolis",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone),
                color: Colors.white,
              ),
              Text(
                "(612)625 - 2008",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chrome_reader_mode_sharp),
                  color: Colors.white),
              Text(
                "twin-cities.umn.edu",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
