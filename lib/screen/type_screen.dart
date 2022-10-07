import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/widget/search_bar.dart';

import '../widget/bottum_navi.dart';

class TypeScreen extends StatelessWidget {
  const TypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildContainer(
                      size, "Private Colleges", "assets/image11.png"),
                  buildContainer(size, "Public Colleges", "assets/image12.png"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "or view all colleges",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 10),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  iconSize: 10,
                  splashRadius: 1,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: Bottum_navi(currentIndex: 3),
      ),
    );
  }

  Container buildContainer(Size size, String text, String image) {
    return Container(
      height: size.height / 6,
      width: size.width / 2.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Padding(
        padding: EdgeInsets.only(top: 80),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
