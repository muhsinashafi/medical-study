import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeLastButton extends StatelessWidget {
  const CollegeLastButton({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 10,
      width: size.width / 1.1,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
        color: Colors.white,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        buildButtom("Will you get in", isSelected: true),
        buildButtom("brochure"),
      ]),
    );
  }

  OutlinedButton buildButtom(String text, {bool isSelected = false}) {
    return OutlinedButton(
        onPressed: () {},
        child: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        style: OutlinedButton.styleFrom(
            backgroundColor: isSelected
                ? Color(0xff2A8B9E)
                : Color.fromARGB(255, 250, 251, 251),
            primary: isSelected
                ? Color.fromARGB(255, 250, 251, 251)
                : Color(0xff2A8B9E),
            //Color.fromARGB(255, 8, 9, 9),
            side: BorderSide(color: Color(0xff2A8B9E), width: 2)));
  }
}
