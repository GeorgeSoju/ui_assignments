import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignments/Login%20and%20Registration/registration.dart';

import '../Homepage01.dart';
import 'homepage02.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.deepPurple),
//       useInheritedMediaQuery: true,
//       home: login(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN / SIGN UP'),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 8),
              child: Image.asset(
                'assets/Images/health.png',
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 10),
              child: const Text(
                "Hello There!!",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (uname) {
                  if (uname!.isEmpty ||
                      !uname.contains('@') ||
                      !uname.contains('.')) {
                    return 'enter a valid username';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    helperText: 'username must be an email',
                    prefixIcon: Icon(Icons.account_box_sharp),
                    hintText: 'user name',
                    labelText: 'user name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password.length < 8) {
                    return 'enter a valid password';
                  } else {
                    return null;
                  }
                },
                obscureText: showpass,
                decoration: InputDecoration(
                    helperText: 'password must contain 8 characters',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: 'password',
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 30),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    }
                  },
                  child: Text("SIGN IN")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registerpage()));
                },
                child: Text("SIGN UP")),
          ],
        ),
      )),
    );
  }
}
