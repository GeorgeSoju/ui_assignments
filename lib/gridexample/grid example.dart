import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>  MaterialApp(
      useInheritedMediaQuery: true,
      home: grid01(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class grid01 extends StatelessWidget {
  var icon =[FontAwesomeIcons.instagram,FontAwesomeIcons.facebook,FontAwesomeIcons.twitter,FontAwesomeIcons.youtube,
    FontAwesomeIcons.reddit,FontAwesomeIcons.snapchat,FontAwesomeIcons.linkedin,FontAwesomeIcons.spotify,
    FontAwesomeIcons.telegram,FontAwesomeIcons.discord,FontAwesomeIcons.pinterest,FontAwesomeIcons.twitch];

  var color =[Colors.blue,Colors.green,Colors.red,Colors.yellowAccent,Colors.pink,Colors.cyan,Colors.teal,Colors.blueAccent,
    Colors.orangeAccent,Colors.yellow,Colors.pink,Colors.blue,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid view'),
      ),
      body: GridView.builder(itemCount: color.length,
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,),
          itemBuilder: (context,index){
            Container(
              decoration:
            BoxDecoration(
              boxShadow: const [BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                spreadRadius: 5,
                offset: Offset(3, -6)),
              ],borderRadius: BorderRadius.circular(20),color: color[index]),
              child:  ListTile(
                leading:
                //Icon(Icons.account_box_sharp)
                IconButton(icon: FaIcon(icon[index],), onPressed: () {  },),
                title: const Text('soju\ngeorge'),
              ),
            );
          },
      ),
    );
  }
}
