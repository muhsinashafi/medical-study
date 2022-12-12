import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/bottum_navi.dart';
import '../widget/method.dart';
import 'college_detail_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key, required this.data});
  //final String? type;
  final String data;
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  static List<NewSearchmode> collegesLoction = [
    NewSearchmode(
      'assets/image4.png',
      'hy',
      "No.of colleges:70",
      'no.of seats:444555 ',
    ),
    NewSearchmode(
      'assets/image5.png',
      'EKM',
      "No.of colleges:70",
      "No.of seats:98877",
    ),
    NewSearchmode(
      'assets/image6.png',
      'TVM',
      "No.of colleges:70",
      "No.of seats:98877",
    ),
    NewSearchmode(
      'assets/image7.png',
      'CLT',
      "No.of colleges:70",
      "No.of seats:98877",
    ),
    NewSearchmode(
      'assets/image8.png',
      'KTM',
      "No.of colleges:70",
      "No.of seats:98877",
    ),
    NewSearchmode(
      'assets/image9.png',
      'PTA',
      "No.of colleges:70",
      "No.of seats:98877",
    ),
    NewSearchmode(
      'assets/image11.png',
      'KSB',
      "No.of colleges:70",
      "No.of seats:98877",
    ),
  ];
  List<NewSearchmode> display_List = List.from(collegesLoction);
  void updateList(String value) {
    setState(() {
      display_List = collegesLoction
          .where((element) =>
              element.placeName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height / 13,
              width: size.width / 1.1,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 5,
                      // spreadRadius: 1,
                    )
                  ]),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Color(0xff2A8B9E),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    // color: Colors.amber,
                    child: TextField(
                      onChanged: (value) => updateList(value),
                      textInputAction: TextInputAction.search,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelStyle: GoogleFonts.poppins(fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: display_List.length == 0
                  ? Center(
                      child: Text(
                      " No result  found",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 10),
                    ))
                  : GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CollegeDetails()));
                      }),
                      child: ListView.builder(
                        itemCount: display_List.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Container(
                            height: size.height / 7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 4,
                                  )
                                ]),
                            child: Row(
                              children: [
                                Container(
                                  height: size.height / 7,
                                  width: size.width / 2.8,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              display_List[index].url),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  height: 10,
                                  width: 25,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        display_List[index].placeName,
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        display_List[index].colleges,
                                        style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        display_List[index].seats,
                                        style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
        bottomNavigationBar: const Bottum_navi(currentIndex: 2),
      ),
    );
  }
}
