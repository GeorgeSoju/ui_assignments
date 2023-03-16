import 'package:flutter/material.dart';

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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Welcome Buddy!!',
                  style: TextStyle(fontSize: 30, color: Colors.blue,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

