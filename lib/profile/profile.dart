import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: profile(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding:
                    EdgeInsets.only(top: 20.0, bottom: 16, left: 16, right: 16),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/Images/rajini.jpg',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin,color: Colors.blueAccent,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github,size: 30,),
                      onPressed: () {}),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text('Soju',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              ),const Text('@georgesoju'),
              const Padding(
                padding: EdgeInsets.only(top: 29.0,bottom: 18),
                child: Text('Mobile App Developer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
              ),

              Container(
                height:  MediaQuery.of(context).size.height * .4,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children:  [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                          height: 50,width: 330,
                          child: const ListTile(
                            title: Text('Privacy',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.privacy_tip_outlined,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                          height: 50,width: 330,
                          child: const ListTile(
                            title: Text('Purchse History',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.history,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                          height:50,width: 330,
                          child: const ListTile(
                            title: Text('Help & Support',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.help_outline,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                          height: 50,width: 330,
                          child: const ListTile(
                            title: Text('Settings',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.settings,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                          height: 50,width: 330,
                          child: const ListTile(
                            title: Text('Invite a friend',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.add_reaction_outlined,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                          height: 50,width: 330,
                          child: const ListTile(
                            title: Text('Share',style: TextStyle(color: Colors.black),),
                            leading: Icon(Icons.share,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                          height: 50,width: 320,
                          child: const ListTile(
                            title: Text('Log out',style: TextStyle(color: Colors.black),),
                            leading: Icon(Icons.logout,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
