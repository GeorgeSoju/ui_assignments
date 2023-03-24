import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListSeparator extends StatelessWidget {
  var data = ['data1', 'data2', 'data3', 'data4', 'data5', 'data6', 'data7'];
  var sepdata = ['item1', 'item2', 'item3', 'item4', 'item5', 'item6', 'item7',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[900],
        title: Text('list separator'),),
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(fit:BoxFit.fill,image: AssetImage(
            'assets/Images/Acer_Wallpaper_02_3840x2400.jpg'))),
        child: ListView.separated(itemBuilder: (ctx, index) {return Card(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(data[index]),
          ),
        ),);},
            separatorBuilder: (ctx,index){
          return Card(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(sepdata[index]),
          ),);
            },
            itemCount: data.length),

      ),
    );
  }
}
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        useInheritedMediaQuery: true,
        home: ListSeparator(),
        debugShowCheckedModeBanner: false,
      )));
}
