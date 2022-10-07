import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start3 extends StatelessWidget {
  const Start3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Colleges & Courses",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("choose from 1,00,000 + course in",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 15)),
          ),
          Center(
            child: Text("18,000 + colleges",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 15)),
          ),
        ],
      ),
      /* Container(
          height: 200,
          width: 200,
          color: Colors.amber,
          child: Center(
            child: Text("second"),
          )),*/
    );
  }
}
