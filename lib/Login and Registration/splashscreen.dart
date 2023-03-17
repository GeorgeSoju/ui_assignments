import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignments/Login%20and%20Registration/loginpage%20with%20validation.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>const MaterialApp(
      useInheritedMediaQuery: true,
      home: splashscreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 8),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.pinkAccent, Colors.deepPurple],
                begin: Alignment.centerLeft,
                end: Alignment.topRight)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Images/health.png',
                height: 100,
                width: 100,
              ),
               Text(
                'Healthify Me',
                style:GoogleFonts.andika(
                  textStyle: const TextStyle(color: Colors.white, letterSpacing: .5),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
