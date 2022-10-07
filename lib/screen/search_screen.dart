import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/widget/search_bar.dart';

import '../widget/bottum_navi.dart';
import '../widget/search_colleges.dart';
import '../widget/search_delegate.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body:
            //Column(
            // children: [
            Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            height: 600,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SearchBar(),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Popular Colleges",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SearchColleges(),
                      ],
                    ),
                  ],
                ),
                // ),
              ],
            ),
          ),
          // ],
        ),
        bottomNavigationBar: Bottum_navi(currentIndex: 1),
      ),
    );
  }
}
