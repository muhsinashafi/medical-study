import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeAboutContainer extends StatelessWidget {
  const CollegeAboutContainer({super.key});
  // Color c = const Color(0xffFF7700);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        buildAboutContainer(
            size,
            "assets/image15.png",
            "assets/about1.png",
            "Upto 10 Guarenteed job interviews on clearing the placement eligibility test",
            Colors.blue),
        const SizedBox(
          height: 20,
        ),
        buildAboutContainer(size, "assets/image15.png", "assets/about2.png",
            "Access to dedicated placement", Colors.red),
        const SizedBox(
          height: 20,
        ),
        buildAboutContainer(size, "assets/image15.png", "assets/about1.png",
            "Mock interview wit industry experts", Colors.green),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Container buildAboutContainer(
      Size size, String image, String url, String text, Color color) {
    return Container(
      height: 130,
      //size.height / 5.5,
      width: size.width / 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                // spreadRadius: 2,
                offset: const Offset(1, 2))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: size.width / 3,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  // const Color(0xffFF7700),
                  radius: 20,
                  child: Image.asset(url),
                  // backgroundImage: AssetImage(url),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 55,
                  width: 180,
                  child: AutoSizeText(
                    text,
                    maxLines: 3,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
          //)
        ],
      ),
    );
  }
}
