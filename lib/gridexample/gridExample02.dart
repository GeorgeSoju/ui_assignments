import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            theme: ThemeData(primarySwatch: Colors.teal),
            useInheritedMediaQuery: true,
            home: Grid01(),
            debugShowCheckedModeBanner: false,
          )));
}

class Grid01 extends StatelessWidget {
  var icon =[FontAwesomeIcons.instagram,FontAwesomeIcons.facebook,FontAwesomeIcons.twitter,FontAwesomeIcons.youtube,
    FontAwesomeIcons.reddit,FontAwesomeIcons.snapchat,FontAwesomeIcons.linkedin,FontAwesomeIcons.spotify,
    FontAwesomeIcons.telegram,FontAwesomeIcons.discord,FontAwesomeIcons.pinterest,FontAwesomeIcons.twitch];
  var colour =[Colors.blue,Colors.green,Colors.red,Colors.yellowAccent,Colors.pink,Colors.cyan,Colors.teal,Colors.blueAccent,
    Colors.orangeAccent,Colors.yellow,Colors.pink,Colors.blue,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
        ),
        body: GridView.custom(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,),
            childrenDelegate:
            // SliverChildListDelegate([
            //     Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
            //     Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
            //     Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
            //     Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
            //     Card(child: Center(child: Icon(Icons.headphones, size: 30,),),),
            //   ])
            SliverChildBuilderDelegate(
                childCount: 12,
                    (context, index){
                  return Center(
                    child: Container(height: 80,width: 135,decoration: BoxDecoration(boxShadow:  const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 0),

                      ),
                    ],color: colour[index],
                        borderRadius:BorderRadius.circular(20) ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: IconButton(icon: FaIcon(icon[index],), onPressed: () {},),
                          //  Icon(Icons.confirmation_num_sharp),
                          title: Text('soju\ngeor'),
                        ),
                      ),
                    ),
                  );
                })
        )

    );
  }
}
