import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeSuccessStory extends StatelessWidget {
  const CollegeSuccessStory({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Our Learner,s Success ",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Text(
          " Stories",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    buildStory(
                        size,
                        "assets/nature1.png",
                        "Rahul Sharma ",
                        "IT Trainee ",
                        "The great learning platform has helped me during the pandemic with my placements and to improve my knowledge "),
                    const SizedBox(
                      width: 20,
                    ),
                    buildStory(
                        size,
                        "assets/nature1.png",
                        "Rahul Sharma ",
                        "IT Trainee ",
                        "The great learning platform has helped me during the pandemic with my placements and to improve my knowledge "),
                    const SizedBox(
                      width: 20,
                    ),
                    buildStory(
                        size,
                        "assets/nature1.png",
                        "Rahul Sharma ",
                        "IT Trainee ",
                        "The great learning platform has helped me during the pandemic with my placements and to improve my knowledge ")
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container buildStory(
      Size size, String url, String name, String trainee, String text) {
    return Container(
      height: 170,
      width: 250,
      padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(1, 2))
          ]),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 30,
                backgroundImage: AssetImage("assets/nature1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      trainee,
                      style: GoogleFonts.poppins(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText(
            text,
            style:
                GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
