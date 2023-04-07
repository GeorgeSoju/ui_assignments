//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignments/Login%20and%20Registration/loginpage%20with%20validation02.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (BuildContext context) => const MaterialApp(
//       useInheritedMediaQuery: true,
//       home: registeration02(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }

class registeration02 extends StatefulWidget {
  const registeration02({Key? key}) : super(key: key);

  @override
  State<registeration02> createState() => _registeration02State();
}

class _registeration02State extends State<registeration02> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  var confirmpass;
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
          Form(key: formkey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 90, bottom: 50),
                      child: Image.asset(
                        'assets/Images/Heart.png',
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12, bottom: 8),
                      child: Text(
                        'Sign Up here!',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 2, top: 8),
                      child: TextFormField(
                        validator: (uname){
                          if (uname!.isEmpty|| !uname.contains('@')
                          || !uname.contains('.')){
                            return 'enter a valid user name';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            helperText: 'Username must be an email',
                            hintText: 'Enter your new User Name',
                            hintStyle: const TextStyle(color: Colors.black),
                            labelText: 'User Name',
                            labelStyle: const TextStyle(color: Colors.pinkAccent),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(Icons.account_box_sharp),
                            prefixIconColor: Colors.pinkAccent,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 8, bottom: 2),
                      child: TextFormField(
                        validator: (phone){
                          if ( phone!.isEmpty || phone.length<10){
                            return 'phone number is not valid';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            helperText: 'Phone number must be an email',
                            hintText: 'Enter your Phone number',
                            hintStyle: const TextStyle(color: Colors.black),
                            labelText: 'Phone',
                            labelStyle: const TextStyle(color: Colors.pinkAccent),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(Icons.phone),
                            prefixIconColor: Colors.pinkAccent,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 8, bottom: 2),
                      child: TextFormField(

                        validator: (pword){
                          confirmpass= pword;
                          if (pword!.isEmpty || pword.length <8){
                            return 'password is not valid';
                          }
                          else{
                             return null;
                          }
                        },
                        obscureText: showpass,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                                color: Colors.pinkAccent, fontSize: 15),
                            hintText: 'New Password',
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
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 8, bottom: 2),
                      child: TextFormField(
                        validator: (cpass){
                          if (cpass!=confirmpass||cpass!.isEmpty){
                            return 'password does not match';
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: const TextStyle(
                                color: Colors.pinkAccent, fontSize: 15),
                            hintText: 'Confirmed Password',
                            hintStyle: const TextStyle(color: Colors.black),
                            filled: true,
                            fillColor: Colors.white,
                            helperText: 'Password must contain 8 characters',
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor: Colors.pinkAccent,

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none)),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pinkAccent,
                                fixedSize: const Size(120, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              final valid = formkey.currentState!.validate();
                              if(valid) {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => login02()));
                              } },
                            child: const Text('Sign Up')),
                      ),
                    )
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
