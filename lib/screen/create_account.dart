import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/start_screen.dart';

import 'home_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  var name;
  var location;
  var birth;
  var course;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var value;
  buildNameField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Name", labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value == null || value.isEmpty) {
          return "Name is requird";
        }
        if (name.length < 3) {
          return 'Name is too short';
        }
        return null;
      },
      onSaved: (var value) {
        name = value;
      },
    );
  }

  buildLocationField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Location", labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value == null || value.isEmpty) {
          return "Location is requird";
        }
        return null;
      },
      onSaved: (var value) {
        location = value;
      },
    );
  }

  buildBirthField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "date of Birth",
          labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value == null || value.isEmpty) {
          return "Birth is requird";
        }
        return null;
      },
      onSaved: (var value) {
        birth = value;
      },
    );
  }

  buildCourseField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Course", labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value == null || value.isEmpty) {
          return "Course is requird";
        }
        return null;
      },
      onSaved: (var value) {
        course = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
                height: 600,
                child: ListView(
                  //  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "    Create your Account",
                      style: GoogleFonts.poppins(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("      Signing up With ",
                        style: GoogleFonts.poppins(fontSize: 12)
                        //TextStyle(fontSize: 12),
                        ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 18),
                      child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildNameField(),
                              SizedBox(
                                height: 10,
                              ),
                              buildLocationField(),
                              SizedBox(
                                height: 10,
                              ),
                              buildBirthField(),
                              SizedBox(
                                height: 10,
                              ),
                              buildCourseField(),
                              SizedBox(
                                height: 100,
                              ),
                              /* TextButton(
                                onPressed: () {
                                  if (!formKey.currentState!.validate()) {
                                    return;
                                  }
                                  formKey.currentState!.save();
                                  print(name);
                                  print(location);
                                  print(birth);
                                  print(course);
                                },
                                child: */
                              InkWell(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()));
                                  }
                                  // formKey.currentState!.save();
                                  print(name);
                                  print(location);
                                  print(birth);
                                  print(course);
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
                                      "Continue",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              // )
                            ],
                          )),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
