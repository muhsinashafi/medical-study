import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/search_screen.dart';

class HomeContInfo extends StatelessWidget {
  const HomeContInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildInfo(
                  size, context, "assets/image2.png", "assets/image3.png"),
              const SizedBox(
                width: 20,
              ),
              buildInfo(
                  size, context, "assets/image2.png", "assets/image3.png"),
            ],
          ),
        ),
      ],
    );
  }

  Container buildInfo(
      Size size, BuildContext context, String image, String logo) {
    return Container(
      height: 200,
      width: 200,
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.7), blurRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              //flex: 1,
              child: Container(
            height: size.height / 7,
            width: size.width / 1.7,
            padding: const EdgeInsets.only(
                top: 20, left: 20, right: 140, bottom: 60),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                // color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
            child: Image(
              image: AssetImage(logo),
            ),
          )),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Lorem ipsum dolor sit amet",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Bangaluru",
              style: GoogleFonts.poppins(fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchScreen()));
                    }),
                    child: Text(
                      "INFO",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
