import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: whatsappcontact(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class whatsappcontact extends StatefulWidget {
  const whatsappcontact({Key? key}) : super(key: key);

  @override
  State<whatsappcontact> createState() => _whatsappcontactState();
}

class _whatsappcontactState extends State<whatsappcontact> {
  @override
  Widget build(BuildContext context) {
    var name = ['Hari', 'Aby', 'Sree', 'Nandu', 'Jithu'];
    var images = [
      'assets/Images/dq.jpg',
      'assets/Images/fahad.jpg',
      'assets/Images/nimisha-sajayan-1.jpg',
      'assets/Images/kamal.png',
      'assets/Images/health.png',
    ];
    var about = [
      'Available',
      'At gym',
      '\u{1F355}',
      'At Work',
      'available'
    ];
    return Scaffold(
        appBar: AppBar(leading: const Icon(Icons.arrow_back),
          backgroundColor:Colors.teal ,
          title: const Text('Select Contact',style: TextStyle(fontWeight: FontWeight.bold),), actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: List.generate(
            5,
                (index) => Card(
                child: ListTile(
                  title: Text(name[index],style: TextStyle(fontSize: 20)),
                  subtitle: Text(" ${about[index]}",style: TextStyle(fontSize: 15)),
                  leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
                )),
          ),
        ));
  }
}
