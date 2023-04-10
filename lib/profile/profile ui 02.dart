import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: Profile02(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}



class Profile02 extends StatelessWidget {
  const Profile02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.pinkAccent,
        title: const Center(child: Text('Welcome')),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 45.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Stack(
        children: [Container(height: 350,),
          Container(height: 150,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Images/pexels-karolina-grabowska-4466492.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(top: 100, left: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.message),
                ),
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Images/kamal.png'),
                    radius: 56,
                  ),
                ),
                SizedBox(width: 20,),
                CircleAvatar(radius: 30,
                  backgroundColor: Colors.blue,child: Icon(Icons.add),
                )
              ],
            ),
          ),
          Positioned(top:230,left: 120,
            child: Column(children: const [
              Text('Soju S George',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('@georgesoju',style: TextStyle(color: Colors.pink),)
            ],),
          )
        ],
      ),
    );
  }
}
