import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchColleges extends StatelessWidget {
  const SearchColleges({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      // scrollDirection: Axis.vertical,
      children: [
        buildStack(size),
        const SizedBox(
          height: 20,
        ),
        buildStack(size),
      ],
    );
  }

  Container buildStack(Size size) {
    return Container(
      height: size.height / 2,
      width: size.width / 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 1,
                spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: size.height / 7,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: const DecorationImage(
                      image: AssetImage("assets/image2.png"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Image(image: AssetImage("assets/image3.png")),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Alaska Bible College",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: const Color(0xff2A8B9E)),
                ),
                const Spacer(),
                IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.star_rate),
                  color: Colors.yellow,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "4.56k",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xff2A8B9E),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Palmer,AK",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: size.height / 5,
            width: size.width / 1.2,
            margin:
                const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffADE1EB),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/elip1.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "4-year.Private,Suburban",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w500
                              //color: Colors.white
                              ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/elip1.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "100% graduation rate",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/elip1.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "100% placement",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w500
                              //color: Colors.white
                              ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/elip1.png"),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          "NAAC Rank 23",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w500
                              //color: Colors.white
                              ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // ),
    );
  }
}
