import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/home_screen.dart';
import 'package:medical_studies/widget/college_downloading.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class CollegeLastButton extends StatefulWidget {
  const CollegeLastButton({super.key});

  // const CollegeLastButton({super.key,required this.currentIndex});
  // final int currentIndex;

  @override
  State<CollegeLastButton> createState() => _CollegeLastButtonState();
}

class _CollegeLastButtonState extends State<CollegeLastButton> {
  var selectedIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 10,
      width: size.width / 1.1,
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
        color: Colors.white,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(width: 30, color: Colors.white),
        Expanded(child: buildButtom("Will you get in ?", 0)),
        Container(width: 40, color: Colors.white),
        Expanded(child: buildButtom("Brochure", 1)),
        Container(width: 30, color: Colors.white),
      ]),
    );
  }

  OutlinedButton buildButtom(String text, int index) {
    return OutlinedButton(
        onPressed: () {
          selectedIndex = index;

          if (selectedIndex == index) {
            switch (index) {
              case 0:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));

                break;

              case 1:
                openFile(
                    url:
                        "https://res.cloudinary.com/practicaldev/image/fetch/s--ptbUnCl4--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://picsum.photos/600/400",
                    fileName: "image");

                break;
            }
          }
          setState(() {});
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: selectedIndex == index
                ? const Color(0xff2A8B9E)
                : const Color.fromARGB(255, 250, 251, 251),
            primary: selectedIndex == index
                ? const Color.fromARGB(255, 250, 251, 251)
                : const Color(0xff2A8B9E),
            //Color.fromARGB(255, 8, 9, 9),
            side: const BorderSide(color: Color(0xff2A8B9E), width: 2)),
        child: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
        ));
  }

  Future openFile({required String url, String? fileName}) async {
    final file = await
        // pickFile();
        downloadFile(url, fileName!);
    if (file == null) return;
    print("path:${file.path}");
    OpenFile.open(file.path);
  }

  Future<File?> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return null;
    return File(result.files.first.path!);
  }

  Future<File?> downloadFile(String url, String? name) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File("${appStorage.path}/$name");
    try {
      final response = await Dio().get(
        url,
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            receiveTimeout: 0),
      );
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();
      return file;
    } catch (e) {
      return null;
    }
  }
}
