import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/widget/bottum_navi.dart';
import 'package:medical_studies/widget/home_button.dart';
import 'package:medical_studies/widget/home_info.dart';

import '../widget/home_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Container(
            height: size.height / 10,
            // width: size.width / 1.5,
            //color: Colors.amber,
            padding: EdgeInsets.only(right: 20, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.menu_sharp)),
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage("assets/nature1.png"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to ",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Medical  Studies",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2A8B9E),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: size.height / 3,
            width: size.width / 1.2,
            padding: EdgeInsets.only(top: 30, left: 20),
            margin: EdgeInsets.only(top: 20.0, left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage("assets/home1.png"), fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Popular Colleges",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "Find out what you like",
                  style: GoogleFonts.poppins(
                      color: Colors.white, height: 2, fontSize: 14),
                ),
                Text(
                  "doing best",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    height: size.height / 17,
                    width: size.width / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2A8B9E)),
                    child: Center(
                      child: Text(
                        "Explore",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select a College & power",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "ahead your career",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 60, child: HomeButton()),
                SizedBox(height: 250, child: HomeContInfo()),
                Row(
                  children: [
                    const Spacer(),
                    TextButton(
                        onPressed: (() {}),
                        child: Text(
                          "see all",
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              HomeCategory(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: size.height / 10,
                width: size.width / 1,
                color: Color(0xffDBDDE1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Premium program query?",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Color(0xff707070)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/image1.png",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "CALL US",
                            style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff2A8B9E),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ]),
        bottomNavigationBar: Bottum_navi(currentIndex: 0),
      ),
    );
  }
}
