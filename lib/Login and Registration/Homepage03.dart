import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (BuildContext context) => const MaterialApp(
//       useInheritedMediaQuery: true,
//       home: Homepage03(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }


class Homepage03 extends StatefulWidget {
  const Homepage03({Key? key}) : super(key: key);

  @override
  State<Homepage03> createState() => _Homepage03State();
}

class _Homepage03State extends State<Homepage03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Images/leaf.jpg',),fit: BoxFit.fill,
          )
        ),child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children:  [Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Image.asset('assets/Images/Heart.png',height: 100,width: 100,),
          ),
            Text('Meet.',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Text('Date.',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Padding(
              padding: const EdgeInsets.only(top: 0,bottom: 70),
              child: Text('Love.',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ],
      ),
        ),
      ),
    );
  }
}
