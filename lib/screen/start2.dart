import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start2 extends StatelessWidget {
  const Start2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Colleges & Courses",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 25)),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text("choose from 1,00,000 + course in",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 15)
                //TextStyle(fontSize: 15),
                ),
          ),
          Center(
            child: Text("18,000 + colleges",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, fontSize: 15)
                //TextStyle(fontSize: 15, height: 2),
                ),
          ),
        ],
      ),
    );
  }
}
