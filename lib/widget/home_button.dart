import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/college_detail_screen.dart';

import '../screen/location_screen.dart';
import '../screen/search_screen.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({super.key});

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  var selectedIndex;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOutlineButton("Top colleges", 0),
              const SizedBox(
                width: 20,
              ),
              buildOutlineButton("Top placement college", 1),
              const SizedBox(
                width: 20,
              ),
              buildOutlineButton("Top colleges", 2),
            ],
          ),
        ),
      ],
    );
  }

  OutlinedButton buildOutlineButton(String name, int index) {
    return OutlinedButton(
        onPressed: () {
          selectedIndex = index;
          if (selectedIndex == index) {
            switch (index) {
              case 0:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ));

                break;

              case 1:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LocationScreen(
                              data: 'new data',
                            )));

                break;

              case 2:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CollegeDetails()));

                break;
            }
          }
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
          style: GoogleFonts.poppins(fontSize: 12),
        ));
  }
}
