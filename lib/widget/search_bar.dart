import 'package:flutter/material.dart';

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
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(1, 2))
          ]),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xff2A8B9E),
            ),
            onPressed: () {
              /* showSearch(
                              context: context,
                              delegate: MySearchDelegate(),
                            );*/
            },
          ),
        ],
      ),
    );
  }
}
