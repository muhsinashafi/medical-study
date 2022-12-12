import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/main.dart';
import 'package:medical_studies/widget/search_bar.dart';
import '../widget/bottum_navi.dart';
import '../class_variable/search_college.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static List<SearchCollege> popularColleges = [
    SearchCollege('assets/image2.png', 'assets/image3.png',
        'Alaska Bible College', "palmer,AK"),
    SearchCollege('assets/image2.png', 'assets/image3.png', 'Maharajas College',
        "palmer,AK"),
    SearchCollege(
        'assets/image2.png', 'assets/image3.png', 'M.E.s College', "palmer,AK"),
  ];
  List<SearchCollege> display_List = List.from(popularColleges);
  void updateList(String value) {
    setState(() {
      display_List = popularColleges
          .where((element) =>
              element.collegeName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          const Center(child: SearchBar()),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Popular Colleges",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            // height: 200,
            child: ListView.builder(
              itemCount: display_List.length,
              itemBuilder: (context, int index) => ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: size.height / 2,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                            )
                            //spreadRadius: 1)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: size.height / 6,
                              // width: size.width / 1.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(display_List[index].image),
                                      fit: BoxFit.cover)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            display_List[index].logo)),
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
                                  display_List[index].collegeName,
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
                              display_List[index].placeName,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xff707070),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            height: size.height / 5,
                            width: size.width / 1.2,
                            margin: const EdgeInsets.only(
                                left: 20, top: 20, right: 20, bottom: 20),
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
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          "4-year.Private,Suburban",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500
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
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          "100% graduation rate",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
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
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          "100% placement",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500
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
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        //
        bottomNavigationBar: const Bottum_navi(currentIndex: 1),
      ),
    );
  }
}
//Column(
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Popular Colleges",
//                     style: GoogleFonts.poppins(
//                         fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const SearchColleges(),
//             ],
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
