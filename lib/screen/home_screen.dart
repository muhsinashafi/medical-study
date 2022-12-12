import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/widget/bottum_navi.dart';
import 'package:medical_studies/widget/home_button.dart';
import 'package:medical_studies/widget/home_info.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widget/home_category.dart';
import 'college_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              // height: size.height / 1.35,
              child: ListView(children: [
                Container(
                  height: size.height / 10,
                  // width: size.width / 1.5,
                  //color: Colors.amber,
                  padding: const EdgeInsets.only(right: 20, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu_sharp)),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/nature1.png"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
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
                              color: const Color(0xff2A8B9E),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 210,
                  // size.height / 3.5,
                  width: size.width / 1.2,
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  margin: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      image: DecorationImage(
                          image: const AssetImage("assets/home1.png"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.multiply))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
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
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CollegeDetails()));
                        },
                        child: Container(
                          height: size.height / 17,
                          width: size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff2A8B9E)),
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

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        "Select a College & power",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Text(
                        "ahead your career",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                      // width: 20,
                      child: HomeButton(),
                    ),
                    const SizedBox(
                      height: 250,
                      child: HomeContInfo(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 10),
                      child: Row(
                        children: [
                          const Spacer(),
                          TextButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CollegeDetails()));
                              }),
                              child: Text(
                                "See all",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                // ),
                // Column(
                // children: [
                const HomeCategory(),
                // SizedBox(
                //  height: 10,
                // ),
                //  ],
                //)
              ]),
            ),
            GestureDetector(
              onTap: () {
                launch('tel://099887665');
                /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CollegeDetails()));*/
              },
              child: Container(
                // height: size.height / 9.6,
                width: size.width / 1,
                padding: const EdgeInsets.symmetric(vertical: 10),
                color: const Color(0xffDBDDE1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Premium program query?",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: const Color(0xff707070)),
                    ),
                    // GestureDetector(
                    /// onTap: () {
                    //  launch('tel://099887665');
                    //  },
                    //   child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Image.asset(
                            "assets/image1.png",
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 5),
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
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const Bottum_navi(currentIndex: 0),
      ),
    );
  }
}
