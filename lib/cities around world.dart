import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: Cities(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Cities extends StatelessWidget {
  const Cities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var place = ['Delhi', 'London', 'Vancouver', 'New York'];
    var country = ['India', 'Britain', 'Canada', 'America'];
    var images = [
      'assets/images/delhi1.jpg',
      'assets/images/london.jpg',
      'assets/images/Vancouver.jpg',
      'assets/images/new york.jpg'
    ];
    var population =['19mil','12mil','13mil','10mil'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent[700],
        title: const Text('Cities Around World',style: TextStyle(color: Colors.black,fontStyle:FontStyle.normal ) ,),
      ),
      body: ListView(
        children: List.generate(
          4,
              (index) => Card(
              child: ListTile(
                title: Text(place[index], style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                subtitle: Text( "${country[index]}\npopulation:${population[index]}" , style: TextStyle(fontSize: 15)),
                isThreeLine: true,
                leading: Container(width :100,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.contain,image:AssetImage( images[index],) ))),

              )),
        ),
      ),
    );
  }
}
