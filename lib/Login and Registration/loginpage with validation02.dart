//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Homepage03.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (BuildContext context) => const MaterialApp(
//       useInheritedMediaQuery: true,
//       home: login02(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }

class login02 extends StatefulWidget {
  const login02({Key? key}) : super(key: key);

  @override
  State<login02> createState() => _login02State();
}

class _login02State extends State<login02> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/Images/leaf.jpg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, bottom: 50, left: 90),
                      child: Image.asset(
                        'assets/Images/Heart.png',
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12,bottom: 8,top: 8),
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                          helperText: 'Username must be a email',
                          hintText: 'Enter Your User name',
                          prefixIcon: const Icon(Icons.account_box_sharp),
                          suffixIcon: const Icon(Icons.email),
                          suffixIconColor: Colors.white,
                          prefixIconColor: Colors.pinkAccent,
                          hintStyle: const TextStyle(color: Colors.black),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'User name',
                          labelStyle: const TextStyle(
                              color: Colors.pinkAccent, fontSize: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0,left: 8),
                      child: TextFormField(
                        obscureText: showpass,
                          validator: (password) {
                            if (password!.isEmpty || password.length < 8) {
                              return 'enter a valid password';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                            color: Colors.pinkAccent, fontSize: 15),
                        hintText: 'Enter Your Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        helperText: 'Password must contain 8 characters',
                              prefixIcon: const Icon(Icons.lock),
                              prefixIconColor: Colors.pinkAccent,
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
                        suffixIconColor: Colors.pinkAccent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 8,left: 8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent,
                              fixedSize: Size(120, 40),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            final valid = formkey.currentState!.validate();
                            if (valid) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Homepage03()));
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
