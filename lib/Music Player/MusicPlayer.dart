import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: MusicPlayer(),
            debugShowCheckedModeBanner: false,
          )));
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 10, left: 0, right: 10),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            ),
          ),
          Card(
            color: Colors.black45,
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(color: Colors.white),
              ),
              title: const Text(
                'Hero',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: const Text(
                'Taylor Swift',
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
    );
  }
}
