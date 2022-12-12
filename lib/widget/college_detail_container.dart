import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CollegeDetailsContainer extends StatefulWidget {
  const CollegeDetailsContainer({super.key});

  @override
  State<CollegeDetailsContainer> createState() =>
      _CollegeDetailsContainerState();
}

class _CollegeDetailsContainerState extends State<CollegeDetailsContainer> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void ShowRating() {
      showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text(
                  "Rating This College",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                content: SizedBox(
                  height: 200,
                  // width: 200,
                  //color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Please leave a star rating",
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                      Center(
                        child: RatingBar.builder(
                            itemSize: 30,
                            minRating: 1,
                            itemBuilder: (context, _) =>
                                const Icon(Icons.star, color: Colors.yellow),
                            onRatingUpdate: (rating) {
                              setState(() {
                                this.rating == rating;
                              });
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 2,
                          // expands: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(width: 1)),
                              labelText: "Comment",
                              labelStyle: GoogleFonts.poppins(fontSize: 15)),
                        ),
                      )
                    ],
                  ),
                ),
                //  actionsAlignment: MainAxisAlignment.spaceBetween,
                //  actionsPadding: EdgeInsets.only(bottom: 50),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      child: Text(
                        "Ok",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ))
                ],
              )));
    }

    return Container(
      height: size.height / 1.7,
      width: size.width / 1.1,
      padding: const EdgeInsets.only(top: 50, bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(
              image: const AssetImage(
                "assets/image13.png",
              ),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.multiply),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Text(
            "MIT Manipal - Manipal",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
          ),
          Text(
            "Institute of Technology",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "6 Month Decicated Placment",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
          ),
          Text(
            "Guaranteed Job Interviews*",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 100,
            //  padding: EdgeInsets.only(right: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      iconSize: 20,
                      onPressed: (() {
                        ShowRating();
                      }),
                      icon: const Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                        size: 25,
                      )),
                  Text(
                    "4.56k",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: const Color(0xff2A8B9E)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // CollegeDownload(),
          // SizedBox(
          //   height: 15,
          //  ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on_sharp,
                  size: 15,
                ),
                color: Colors.white,
              ),
              Text(
                "100 church street SE, Minneapolis",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Colors.white),
              )
            ],
          ),

          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.phone,
                  size: 15,
                ),
                color: Colors.white,
              ),
              Text(
                "(612)625 - 2008",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Colors.white),
              )
            ],
          ),

          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.language,
                  size: 15,
                ),
                color: Colors.white,
              ),
              Text(
                "twin-cities.umn.edu",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
