import 'package:flutter/material.dart';

import '../screen/home_screen.dart';
import '../screen/location_screen.dart';
import '../screen/search_screen.dart';
import '../screen/type_screen.dart';

class Bottum_navi extends StatefulWidget {
  const Bottum_navi({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  State<Bottum_navi> createState() => _Bottum_naviState();
}

class _Bottum_naviState extends State<Bottum_navi> {
  void onTap(int index) {
    if (widget.currentIndex != index) {
      switch (index) {
        case 0:
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));

          break;

        case 1:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchScreen()));

          break;

        case 2:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LocationScreen()));

          break;

        case 3:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TypeScreen()));
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp), label: "Location"),
        BottomNavigationBarItem(icon: Icon(Icons.view_comfy), label: "Type"),
      ],
      currentIndex: widget.currentIndex,
      selectedItemColor: Color(0xff2A8B9E),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,

      // selectedLabelStyle: TextStyle(color: Colors.black),
      onTap: onTap,
    );
  }
}
