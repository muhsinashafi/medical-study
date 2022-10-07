import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/create_account.dart';
import 'package:medical_studies/screen/start2.dart';
import 'package:medical_studies/screen/start3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var number;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var value;

  // var value;
  @override
  Widget build(BuildContext context) {
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
                content: Container(
              height: size.height / 2.4,
              width: size.width / 1.5,
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset("assets/logo4.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Verify OTP",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "we've send it on ",
                    style: TextStyle(fontSize: 12),
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
                                return "OTP is required";
                              }
                            },
                            onSaved: (var Value) {
                              number = value;
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
                                return "OTP is required";
                              }
                            },
                            onSaved: (var Value) {
                              number = value;
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
                                return "OTP is required";
                              }
                            },
                            onSaved: (var Value) {
                              number = value;
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
                                return "OTP is required";
                              }
                            },
                            onSaved: (var Value) {
                              number = value;
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Resent OTP in 58s",
                      style: TextStyle(fontSize: 10, height: 3),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          "i agree to",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          "Terms & privacy policy",
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),

                  //  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      otpAlertDialog(context);
                    },
                    child: Container(
                      height: size.height / 18,
                      width: size.width / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2A8B9E),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateAccountScreen()));
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
            ));
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
              width: size.width / 1.5,
              color: Colors.white,
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image.asset("assets/logo4.png"),
                    SizedBox(
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
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text("+91"),
                        VerticalDivider(
                          color: Colors.red,
                          width: 30,
                          thickness: 3,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
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
                              if (value!.isEmpty) {
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
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          otpAlertDialog(context);
                        }
                        formKey.currentState!.save();
                      },
                      child: Container(
                        height: size.height / 18,
                        width: size.width / 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff2A8B9E),
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
              decoration: BoxDecoration(
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
          effect: WormEffect(
              dotWidth: 8, dotHeight: 8, activeDotColor: Color(0xff2A8B9E)),
        ),
        SizedBox(
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
              color: Color(0xff2A8B9E),
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
