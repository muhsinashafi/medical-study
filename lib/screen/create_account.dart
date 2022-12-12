import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:medical_studies/screen/start_screen.dart';
import 'home_screen.dart';
import 'package:intl/intl.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController dateController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var name;
  var location;
  var birth;
  var course;
  var value;
  buildNameField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          labelText: "Name", labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Name is required";
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
      keyboardType: TextInputType.text,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          labelText: "Location", labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Location is required";
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
      controller: dateController,
      // keyboardType: TextInputType.number,
      onTap: () async {
        DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1990),
                lastDate: DateTime(2050))
            .then((selectedDate) {
          if (selectedDate != null) {
            dateController.text =
                //selectedDate.toString();
                DateFormat('dd/MM/yyy').format(selectedDate);
          }
          return null;
        });
      },
      decoration: InputDecoration(
          labelText: "date of Birth",
          labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Birth is required";
        }
      },
      onSaved: (var value) {
        birth = value;
      },
    );
  }

  buildCourseField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          labelText: "Course", labelStyle: GoogleFonts.poppins(fontSize: 15)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Course is required";
        }
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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 18,
                ),
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StartScreen()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Create your Account",
                    style: GoogleFonts.poppins(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Signing up With ",
                      style: GoogleFonts.poppins(fontSize: 12)
                      //TextStyle(fontSize: 12),
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
                  child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildNameField(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildLocationField(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildBirthField(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildCourseField(),
                          const SizedBox(
                            height: 100,
                          ),

                          GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              }
                              formKey.currentState!.save();
                              name = value;
                              // print(name);
                              // print(location);
                              // print(birth);
                              // print(course);
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
                                  "Continue",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          // )
                        ],
                      )),
                ),
                Container(
                  height: 300,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
