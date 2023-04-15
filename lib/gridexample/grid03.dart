import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>  MaterialApp(
      useInheritedMediaQuery: true,
      home: grid03(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class grid03 extends StatelessWidget {
  var image =[ 'assets/Images/spotify playlist 09.jpg','assets/Images/spotify playlist 02.jpg',
    'assets/Images/spotify playlist 04.jpg','assets/Images/spotify playlist 07.jpg','assets/Images/spotify playlist 05.jpg',
    'assets/Images/spotify playlist 06.jpg','assets/Images/spotify playlist 03.jpg','assets/Images/spotify playlist01.jpg',
    'assets/Images/spotify playlist 10.jpg',
    'assets/Images/spotify playlist 08.jpg',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          'Playlists',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.pinkAccent[200]),
        )),
        bottom: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            decoration: BoxDecoration(border:Border.all(color: Colors.pinkAccent,width: 2) ,
                borderRadius: BorderRadius.circular(28), color: Colors.white),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 8, top: 12),
                  hintText: 'Search....',
                  hintStyle: TextStyle(color: Colors.pinkAccent),
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.pinkAccent),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [const SizedBox(height: 20,),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              itemCount: 10,
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image:  DecorationImage(image: AssetImage(image[index]),fit: BoxFit.contain)
                          ,borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                );
                }),
          )
        ],
      ),
        bottomNavigationBar: const GNav(
            color: Colors.pinkAccent,
            activeColor: Colors.white,
            rippleColor: Colors.teal,
            hoverColor: Colors.orange,
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.library_music_sharp,
                text: 'Library',
              ),
            ])
    );
  }
}
