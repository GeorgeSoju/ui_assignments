import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignments/Login%20and%20Registration/loginpage%20with%20validation02.dart';
import 'package:ui_assignments/Login%20and%20Registration/registration02.dart';
//
// void main() {
//   runApp(DevicePreview(
//     builder: (BuildContext context) => const MaterialApp(
//       useInheritedMediaQuery: true,
//       home: welcomeScreen(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/Images/leaf.jpg',
                  ),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Welcome..!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      maximumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
                    ),
                        onPressed: () {Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login02()));}, child: Text('Login')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      maximumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
                    ),
                        onPressed: () {Navigator.push(context,
                            MaterialPageRoute(builder: (context) => registeration02()));}, child: Text('Sign Up')),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
