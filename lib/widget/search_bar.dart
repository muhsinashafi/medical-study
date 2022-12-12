import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/widget/search_delegate.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
          ),
          SizedBox(
            height: 50,
            width: 250,
            // color: Colors.amber,
            child: TextField(
              // onChanged: (value) => ,
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
    );
  }
}
