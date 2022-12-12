import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeDetailsButton extends StatefulWidget {
  const CollegeDetailsButton({super.key});

  @override
  State<CollegeDetailsButton> createState() => _CollegeDetailsButtonState();
}

class _CollegeDetailsButtonState extends State<CollegeDetailsButton> {
  var selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildOutlineButton("Overview", 0),
        buildOutlineButton("Course & Fees", 1),
        buildOutlineButton("CutOff", 2),
      ],
    );
  }

  OutlinedButton buildOutlineButton(String name, int index) {
    return OutlinedButton(
        onPressed: () {
          selectedIndex = index;
          setState(() {});
        },
        style: OutlinedButton.styleFrom(
            backgroundColor:
                selectedIndex == index ? const Color(0xff2A8B9E) : Colors.white,
            primary: selectedIndex == index
                ? const Color.fromARGB(255, 250, 251, 251)
                : const Color.fromARGB(255, 8, 9, 9),
            side: const BorderSide(color: Color(0xff2A8B9E), width: 2)),
        child: Text(
          name,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
        ));
  }
}
