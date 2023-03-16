import 'dart:async';

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
    Timer(const Duration(seconds: 3),(){
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
              const Text(
                'Healthify Me',
                style: TextStyle(fontSize: 20, color: Colors.cyan,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
