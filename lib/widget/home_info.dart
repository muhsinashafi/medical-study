import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContInfo extends StatelessWidget {
  const HomeContInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildInfo(size),
            SizedBox(
              width: 20,
            ),
            buildInfo(size),
          ],
        ),
      ],
    );
  }

  Stack buildInfo(Size size) {
    return Stack(children: [
      Container(
        height: size.height / 4,
        width: size.width / 1.7,
        margin: EdgeInsets.only(top: 40),
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  // spreadRadius: 1,
                  blurRadius: 5)
            ]

            //  offset: Offset(2, 3))

            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              "Lorem ipsum dolor sit amet",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(
              "Bangaluru",
              style: GoogleFonts.poppins(fontSize: 10),
            ),
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: (() {}),
                    child: Text(
                      "INFO",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
      Container(
        height: size.height / 7,
        width: size.width / 1.7,
        margin: EdgeInsets.only(top: 10),
        padding:
            const EdgeInsets.only(top: 20, left: 30, right: 140, bottom: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            // color: Colors.red,
            image: DecorationImage(
              image: AssetImage("assets/nature1.png"),
              fit: BoxFit.cover,
            )),
        child: Container(
          height: size.height / 4,
          width: size.width / 2,
          // margin: EdgeInsets.only(right: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.yellow,
          ),

          // child: Image(
          //  image: AssetImage("assets/Rectangle 635.png"),
          //  fit: BoxFit.cover,
          //  ),
        ),
      )
    ]);
  }
}
