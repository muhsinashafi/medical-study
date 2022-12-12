import 'dart:async';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:medical_studies/provider/animated.dart';
import 'package:medical_studies/screen/start_screen.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard? _riveArtboard;
  StateMachineController? _controller;
  SMIInput<bool>? start;
  var select = false;
  @override
  void initState() {
    super.initState();

    rootBundle.load('assets/nursing_studies.riv').then((data) async {
      final file = RiveFile.import(data);

      final artboard = file.mainArtboard;
      var controller = StateMachineController.fromArtboard(artboard, 'state');

      if (controller != null) {
        artboard.addController(controller);
        start = controller.findInput('start');
      }
      setState(() => _riveArtboard = artboard);
      show();
    });
  }

  Future show() async {
    await Future.delayed(
        const Duration(seconds: 3), (() => start?.value = true));

    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const StartScreen())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //final select = false;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage(
                    "assets/logo6.png",
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.69), BlendMode.multiply))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedAlign(
                alignment: Provider.of<AnimatedNotifier>(context, listen: false)
                        .selected
                    ? Alignment.bottomCenter
                    : Alignment.centerLeft,
                //  select ? Alignment.center : Alignment.centerLeft,
                duration: Duration(seconds: 2),
                // child:
                // Center(
                // alignment: Alignment.centerLeft,
                child: _riveArtboard == null
                    ? const SizedBox()
                    : MouseRegion(
                        onEnter: (_) => start?.value = true,
                        onExit: (_) => start?.value = false,
                        child: GestureDetector(
                          child: SizedBox(
                            width: 180,
                            height: 180,
                            child: Rive(
                              artboard: _riveArtboard!,
                            ),
                          ),
                        ),
                      ),
              ),
              // ),
              // const SizedBox(width: 15.0, height: 100.0),
              // DefaultTextStyle(
              //   style: const TextStyle(
              //     fontSize: 35.0,
              //   ),
              //   child: AnimatedTextKit(
              //       // repeatForever: true,
              //       //isRepeatingAnimation: true,
              //       animatedTexts: [
              //         // RotateAnimatedText(
              //         //     'Medical Studies  know your destinetion'),
              //         FlickerAnimatedText(
              //           'Medical Studies ',
              //           textStyle: GoogleFonts.poppins(
              //             fontWeight: FontWeight.w500,
              //             fontSize: 23,
              //             color: Colors.white,
              //           ),
              //           speed: const Duration(seconds: 2),
              //           //entryEnd: 0.7
              //         ),
              //       ]),
              // ),

              //       Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Center(
              //       child: Padding(
              //         padding: const EdgeInsets.only(top: 10),
              //         child: Text(
              //           "Medical Studies",
              //           style: GoogleFonts.poppins(
              //             fontWeight: FontWeight.w500,
              //             fontSize: 23,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //     ),
              //     Text(
              //       "know your destinetion",
              //       style: GoogleFonts.poppins(
              //           fontSize: 12,
              //           color: Colors.white,
              //           fontWeight: FontWeight.w400),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
