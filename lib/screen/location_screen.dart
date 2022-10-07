import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/widget/search_bar.dart';

import '../widget/bottum_navi.dart';
import 'college_detail_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                SearchBar(),
                SizedBox(
                  height: 20,
                ),
                continerlocation(size, "assets/image4.png", context),
                SizedBox(
                  height: 20,
                ),
                continerlocation(size, "assets/image5.png", context),
                SizedBox(
                  height: 20,
                ),
                continerlocation(size, "assets/image6.png", context),
                SizedBox(
                  height: 20,
                ),
                continerlocation(size, "assets/image7.png", context),
                SizedBox(
                  height: 20,
                ),
                continerlocation(size, "assets/image7.png", context),
                SizedBox(
                  height: 20,
                ),
                continerlocation(size, "assets/image7.png", context),
              ],
            )
          ],
        ),
        bottomNavigationBar: Bottum_navi(currentIndex: 2),
      ),
    );
  }

  GestureDetector continerlocation(
      Size size, String image, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CollegeDetails()));
      },
      child: Stack(
        children: [
          Container(
            height: size.height / 8,
            width: size.width / 1.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(1, 2))
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 160, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hydrabadh",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "No. of Colleges: 2568",
                    style: GoogleFonts.poppins(fontSize: 10),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "No. of Seats: 7000",
                    style: GoogleFonts.poppins(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: size.height / 8,
            width: size.width / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
