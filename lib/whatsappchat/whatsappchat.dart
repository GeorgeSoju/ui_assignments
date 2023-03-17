import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: whatsappchat(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class whatsappchat extends StatefulWidget {
  const whatsappchat({Key? key}) : super(key: key);

  @override
  State<whatsappchat> createState() => _whatsappchatState();
}

class _whatsappchatState extends State<whatsappchat> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal ,
        title: const Text('WhatsApp',style: TextStyle(fontWeight: FontWeight.bold),), actions: <Widget>[IconButton(
          icon: const Icon(Icons.camera_alt_outlined),
          onPressed: () {},
        ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
      Card(
        child: ListTile(
        leading: const CircleAvatar(backgroundImage: AssetImage('assets/Images/dq.jpg'),),
        title: const Text('Hari'),
        trailing: const Text('2:22'),
        subtitle: Row(
          children: const <Widget>[
            Icon(Icons.phone_missed, size: 16.0,color: Colors.red,),
            SizedBox(width: 5.0),
            Text('missed voice call'),
          ],
        ),
    ),
      )
          ,Card(
            child: ListTile(
              leading: const CircleAvatar(backgroundImage: AssetImage('assets/Images/fahad.jpg'),),
              title: Text('Aby'),
              trailing: Text('Yesterday'),
              subtitle: Row(
                children: const <Widget>[
                  Icon(Icons.delete, size: 16.0,color: Colors.grey,),
                  SizedBox(width: 5.0),
                  Text('this message was deleted'),
                ],
              ),
            ),
          ),Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/Images/nimisha-sajayan-1.jpg'),),
              title: Text('Sree'),
              trailing: Text('13:05'),
              subtitle: Row(
                children: const <Widget>[
                  Icon(Icons.photo, size: 16.0,color: Colors.green,),
                  SizedBox(width: 5.0),
                  Text('Photo'),
                ],
              ),
            ),
          ),Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/Images/kamal.png'),),
              title: Text('Nandu'),
              trailing: Text('12:02'),
              subtitle: Row(
                children: const <Widget>[
                  Icon(Icons.headphones, size: 16.0,color: Colors.grey,),
                  SizedBox(width: 5.0),
                  Text('Audio'),
                ],
              ),
            ),
          ),Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/Images/health.png'),),
              title: Text('Jithu'),
              trailing: Text('Yesterday'),
              subtitle: Row(
                children: const <Widget>[
                  Icon(Icons.video_camera_back_outlined, size: 16.0,color: Colors.green,),
                  SizedBox(width: 5.0),
                  Text('Video'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
