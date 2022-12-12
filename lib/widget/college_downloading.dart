import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';

import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

class CollegeDownload extends StatefulWidget {
  const CollegeDownload({super.key});

  @override
  State<CollegeDownload> createState() => _CollegeDownloadState();
}

class _CollegeDownloadState extends State<CollegeDownload> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            openFile(
                url:
                    "https://res.cloudinary.com/practicaldev/image/fetch/s--ptbUnCl4--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://picsum.photos/600/400",
                fileName: "image");
          },
          /* child: Container(
        height: 35,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff2A8B9E),
        ),

        child: Center(
            child: Text(
          "Download Brochure",
          style: GoogleFonts.poppins(
              fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
        )),
        // ),
      ),*/
        ),
      ),
    );
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
