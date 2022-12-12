import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/location_screen.dart';
import 'package:medical_studies/widget/search_bar.dart';
import '../widget/bottum_navi.dart';
import 'college_detail_screen.dart';

class TypeScreen extends StatefulWidget {
  const TypeScreen({super.key});
  // final String data;
  @override
  State<TypeScreen> createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen> {
  // String data = "newData";
  var selectedIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBar(),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Selected type of colleges",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainer(size, "Private Colleges", "assets/image11.png",
                      context, 0),
                  buildContainer(size, "Public Colleges", "assets/image12.png",
                      context, 1),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CollegeDetails()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 40,
                      // color: Colors.amber,
                    ),
                    Text(
                      "or view all colleges",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                    IconButton(
                      icon: const Icon(Icons.keyboard_arrow_right),
                      iconSize: 20,
                      splashRadius: 1,
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const Bottum_navi(currentIndex: 3),
      ),
    );
  }

  GestureDetector buildContainer(
      Size size, String text, String image, BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        selectedIndex = index;
        if (selectedIndex == index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocationScreen(
                            data: 'new data',
                          )));
              break;
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocationScreen(
                            data: 'new data',
                          )));
              break;
          }
        }
      },
      child: Container(
        height: size.height / 6,
        width: size.width / 2.33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //color: Colors.amber,
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Center(
              child: Text(
            text,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
          )),
        ),
      ),
    );
  }
}
