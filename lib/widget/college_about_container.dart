import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeAboutContainer extends StatelessWidget {
  const CollegeAboutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        buildAboutContainer(size, "assets/image14.png", "assets/nature1.png"),
        SizedBox(
          height: 20,
        ),
        buildAboutContainer(size, "assets/image14.png", "assets/nature1.png"),
        SizedBox(
          height: 20,
        ),
        buildAboutContainer(size, "assets/image14.png", "assets/nature1.png"),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Stack buildAboutContainer(Size size, String image, String url) {
    return Stack(
      children: [
        Container(
          height: size.height / 6,
          width: size.width / 1.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 5,
                    // spreadRadius: 2,
                    offset: Offset(1, 2))
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 160, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                  backgroundImage: AssetImage(url),
                ),
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  "Upto 10 Guarenteed job interviews on clearing the placement eligibility test",
                  maxLines: 3,
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
        Container(
          height: size.height / 6,
          width: size.width / 3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.red,
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        )
      ],
    );
  }
}
