import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/create_account.dart';
import 'package:medical_studies/screen/start2.dart';
import 'package:medical_studies/screen/start3.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../provider/counter.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  bool agree = false;
  //int secondsRemaining = 60;
  //bool enableResend = false;
  // Timer? timer;

  var number;
  var number1;
  var number2;
  var number3;
  var number4;

  var value;
  final ctr = TextEditingController();
  final ctr1 = TextEditingController(text: "+91");

  // void startTimer() {
  //   timer = Timer.periodic(Duration(seconds: 1), (_) {
  //     if (secondsRemaining > 0) {
  //       setState(() {
  //         secondsRemaining--;
  //       });
  //     } else {
  //       stopTimer();
  //     }
  //   });
  // }

  // void stopTimer() {
  //   timer?.cancel();
  // }

  @override
  void dispose() {
    super.dispose();
    ctr.dispose();
    ctr1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final counter = Provider.of<CounterNotifier>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    final controller = PageController();
    //
    //OTP
    //
    void otpAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                content: StatefulBuilder(builder: (context, setState) {
              return Container(
                height: size.height / 2.4,
                width: size.width / 1.4,
                padding: const EdgeInsets.only(bottom: 5),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/logo4.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Verify OTP",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Text(
                      "we've send it on ${ctr1.text} ${ctr.text} ",
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Form(
                      key: formKey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 55,
                            width: 50,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (var value) {
                                if (value!.isEmpty) {
                                  return " ";
                                }
                              },
                              // ignore: non_constant_identifier_names
                              onSaved: (var Value) {
                                number1 = value;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 55,
                            width: 50,

                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (var value) {
                                if (value!.isEmpty) {
                                  return " ";
                                }
                              },
                              onSaved: (var value) {
                                number2 = value;
                              },
                            ),
                            //  ),
                          ),
                          SizedBox(
                            height: 55,
                            width: 50,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (var value) {
                                if (value!.isEmpty) {
                                  return "";
                                }
                              },
                              onSaved: (var Value) {
                                number3 = value;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 55,
                            width: 50,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (var value) {
                                if (value!.isEmpty) {
                                  return " ";
                                }
                              },
                              onSaved: (var value) {
                                number4 = value;
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "Resent OTP in ",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            Provider.of<CounterNotifier>(
                              context,
                            ).secondsRemaining.toString(),
                            //counter.secondsRemaining.toString(),
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          splashRadius: 1,
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value!;
                            });
                          },
                        ),
                        Text(
                          "i agree to",
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          "Terms & privacy policy",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        otpAlertDialog(context);
                        // stopTimer();
                      },
                      child: Container(
                        height: size.height / 18,
                        width: size.width / 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2A8B9E),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              if (agree) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CreateAccountScreen()));
                              } else {
                                Fluttertoast.showToast(
                                    msg: "do you agree",
                                    gravity: ToastGravity.BOTTOM,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }
                            }
                            formKey.currentState!.save();
                          },
                          child: Center(
                            child: Text(
                              "Verify",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }));
          });
    }

//
//Mobile number
//
//
    void showAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                content: Container(
              height: size.height / 2.7,
              width: 300,
              padding: const EdgeInsets.only(bottom: 7),
              color: Colors.white,
              child: Form(
                key: formKey1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/logo4.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Enter Mobile Number",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "we'll send an OTP for verification",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 85,
                          width: 50,
                          color: Colors.white,
                          child: TextFormField(
                            controller: ctr1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'))
                            ],
                            decoration: InputDecoration(
                              labelStyle: GoogleFonts.poppins(fontSize: 12),
                              hintText: "+91",
                            ),
                            validator: (var value) {
                              if (value!.isEmpty) {
                                return " ";
                              }
                              return null;
                            },
                            onSaved: (var value) {
                              number = value;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 85,
                          width: 160,
                          color: Colors.white,
                          child: TextFormField(
                            controller: ctr,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 10,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            decoration: InputDecoration(
                              labelStyle: GoogleFonts.poppins(fontSize: 12),
                              hintText: "Mobile Number",
                            ),
                            validator: (var value) {
                              if (value!.length != 10) {
                                return "number is required";
                              }
                              return null;
                            },
                            onSaved: (var value) {
                              number = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formKey1.currentState!.validate()) {
                          Provider.of<CounterNotifier>(context, listen: false)
                              .startTimer();
                          otpAlertDialog(context);
                        }
                        formKey1.currentState!.save();
                      },
                      child: Container(
                        height: size.height / 18,
                        width: size.width / 1.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2A8B9E),
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
          });
    }

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Stack(children: [
          Container(
              height: size.height / 2,
              width: size.width,
              decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/logo2.png"), fit: BoxFit.fill)),
              child: Center(child: Image.asset("assets/logo3.png"))),
        ]),
        SizedBox(
          height: size.height / 5,
          child: PageView(
            controller: controller,
            children: [Start2(), Start3()],
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 2,
          effect: const WormEffect(
              dotWidth: 8, dotHeight: 8, activeDotColor: Color(0xff2A8B9E)),
        ),
        const SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: () {
            showAlertDialog(context);
          },
          child: Container(
            height: size.height / 15,
            width: size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff2A8B9E),
            ),
            child: Center(
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
