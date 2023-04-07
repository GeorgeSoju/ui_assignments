import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: Music(),
            debugShowCheckedModeBanner: false,
          )));
}

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Spotify.',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.restore),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 10, left: 12, right: 10),
              child: Text(
                'Suggested Playlists',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/Images/spotify playlist 02.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/Images/spotify playlist01.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recommended for You',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Card(
              color: Colors.black45,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/Images/Hridayam album art.jpg'),fit: BoxFit.fill),
                      color: Colors.white),
                ),
                title: const Text(
                  'Nagumo',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: const Text(
                  'Hesham Abdul Wahab',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Wrap(
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(right: 14.0),
                      child: Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black45,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/Images/Bheeshma-Parvam-album art.jpg'),fit: BoxFit.fill),
                      color: Colors.white),
                ),
                title: const Text(
                  'Bheeshma Parvam',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: const Text(
                  'Sushin Syam',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Wrap(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 14.0),
                      child: Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black45,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/Images/starboy album art.jpg'),fit: BoxFit.fill),
                      color: Colors.white),
                ),
                title: const Text(
                  'Star Boy',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: const Text(
                  'Weekend',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Wrap(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 14.0),
                      child: Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black45,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/Images/vikram album art.jpg',),fit: BoxFit.fill),
                      color: Colors.white),
                ),
                title: const Text(
                  'Sound of Vikram',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: const Text(
                  'Anirudh',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Wrap(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 14.0),
                      child: Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black45,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/Images/Vaathi-Coming-From-Master--Tamil-2020-album art.jpg'),fit: BoxFit.fill),
                      color: Colors.white),
                ),
                title: const Text(
                  'Vaathi Coming',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: const Text(
                  'Anirudh',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Wrap(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 14.0),
                      child: Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ), bottomNavigationBar: ConvexAppBar(backgroundColor: Colors.black45,height: 45,
      activeColor: Colors.white,elevation: 0,initialActiveIndex: 0,color: Colors.white,curveSize: 10,
      items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.search, title: 'Search'),
        TabItem(icon: Icons.my_library_music_rounded, title: 'Library'),


      ],

    )
    );
  }
}
