import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: profile(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding:
                    EdgeInsets.only(top: 20.0, bottom: 16, left: 16, right: 16),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/Images/kamalhassan.png',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin,color: Colors.blueAccent,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github,size: 30,),
                      onPressed: () {}),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text('Soju',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              )
            ]),
      ),
    );
  }
}
