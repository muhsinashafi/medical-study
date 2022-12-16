import 'package:flutter/material.dart';
import 'package:medical_studies/provider/animated.dart';
import 'package:medical_studies/provider/counter.dart';
import 'package:medical_studies/screen/home_screen.dart';
import 'package:medical_studies/screen/splash_screen.dart';
//import 'package:medical_studies/widget/cointaioner.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterNotifier>(
          create: (_) => CounterNotifier(),
        ),
        ChangeNotifierProvider<AnimatedNotifier>(
            create: (_) => AnimatedNotifier())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "MEDICAL STUDIES",
        home: HomeScreen(),
      ),
    );
  }
}
