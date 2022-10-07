import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeDetailsButton extends StatelessWidget {
  const CollegeDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildOutlineButton("Overview", isSelected: true),
        SizedBox(
          width: 20,
        ),
        buildOutlineButton("Course & Fees"),
        SizedBox(
          width: 20,
        ),
        buildOutlineButton("CutOff"),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  OutlinedButton buildOutlineButton(String name, {bool isSelected = false}) {
    return OutlinedButton(
        onPressed: () {},
        child: Text(
          name,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        style: OutlinedButton.styleFrom(
            backgroundColor: isSelected ? Color(0xff2A8B9E) : Colors.white,
            primary: isSelected
                ? Color.fromARGB(255, 250, 251, 251)
                : Color.fromARGB(255, 8, 9, 9),
            side: BorderSide(color: Color(0xff2A8B9E), width: 2)));
  }
}
