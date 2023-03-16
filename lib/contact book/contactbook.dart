import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: contact(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
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
    var phone = [
      '+918281058578',
      '+915841256956',
      '+914578963214',
      '+914215869763',
      '+918575496324'
    ];
    return Scaffold(
        appBar: AppBar(backgroundColor:Colors.black38 ,
          title: Text('Contacts'),
        ),
        body: ListView(
          children: List.generate(
            5,
            (index) => Card(
                child: ListTile(
              title: Text(name[index]),
              subtitle: Text(" ${phone[index]}"),
              leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
              trailing: const Icon(Icons.phone,color: Colors.green),
            )),
          ),
        ));
  }
}
