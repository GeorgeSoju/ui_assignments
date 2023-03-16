import 'package:flutter/material.dart';

import '../Homepage01.dart';
import 'loginpage with validation.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  var confirmpass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP'),
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
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 10),
                  child: Text(
                    "Create a new Account here!!",
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
                    validator: (phone){
                      if(phone!.isEmpty || phone.length<10){
                        return 'enter a valid phone number';
                      }
                      else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      helperText: 'phonenumber must contain 10 digits',
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'phone number',
                      labelText: 'phone numer',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (password) {
                      confirmpass= password;
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
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (cpass){
                      if (cpass==confirmpass||cpass!.isEmpty){
                        return 'password doesnot match';
                      }
                      else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                    helperText: 'password must contain 8 characters',
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'confirm password',
                    labelText: 'confirm password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100))) ,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        final valid = formkey.currentState!.validate();
                        if (valid) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        }
                      },
                      child: Text("SIGN UP")),
                ),

              ],
            ),
          )),
    );
  }
}
