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
        SizedBox(
          height: 20,
        ),
        buildStack(size),
      ],
    );
  }

  Stack buildStack(Size size) {
    return Stack(
      children: [
        Container(
          height: size.height / 1.8,
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
          child: Padding(
            padding: const EdgeInsets.only(top: 130, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "   Alaska Bible College",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xff2A8B9E)),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.star_border_outlined)),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "4.56k",
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Color(0xff2A8B9E)),
                      ),
                    )
                  ],
                ),
                Text(
                  "    Palmer,AK",
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: Color(0xff707070)),
                ),
                Container(
                  height: size.height / 5,
                  width: size.width / 1.2,
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffADE1EB),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/elip1.png"),
                            Text(
                              "     4-year.Private,Suburban",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                //color: Colors.white
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/elip1.png"),
                            Text(
                              "     100% graduation rate",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                //color: Colors.white
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/elip1.png"),
                            Text(
                              "     100% placement",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                //color: Colors.white
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/elip1.png"),
                            Text(
                              "     NAAC Rank 23",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                //color: Colors.white
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
          ),
        ),
        Container(
          height: size.height / 5,
          width: size.width / 1.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage("assets/image2.png"), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage("assets/image3.png")),
              ],
            ),
          ),
        )
      ],
    );
  }
}
