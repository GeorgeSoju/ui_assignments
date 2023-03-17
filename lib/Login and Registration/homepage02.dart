import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.pinkAccent, Colors.deepPurple],
                begin: Alignment.centerLeft,
                end: Alignment.topRight)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Images/health.png',
                height: 100,
                width: 100,
              ),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Welcome Buddy!!',
                  style:GoogleFonts.andika(
                    textStyle: const TextStyle(color: Colors.white, letterSpacing: .5),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic, ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

