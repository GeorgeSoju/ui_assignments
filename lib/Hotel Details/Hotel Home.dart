import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: HotelHome(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class HotelHome extends StatelessWidget {
  const HotelHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 160,
            backgroundColor: Colors.cyan,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ))
            ],
            floating: true,
            flexibleSpace: ListView(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Center(
                    child: Text(
                  'Type Your Location',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Kakkanad,Kochi',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search)),
                  ),
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(child: Icon(Icons.hotel)),
                        Center(child: Text('Hotel'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(child: Icon(Icons.restaurant)),
                        Center(child: Text('Restaurent'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(child: Icon(Icons.local_cafe)),
                        Center(child: Text('cafe'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/Images/hotel room.jpg'),
                            const Positioned(
                                right: 10,
                                top: 10,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,
                                )),
                            const Positioned(right: 8,
                                top: 8,
                                child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                              size: 24,
                            )),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: const Text('\$40'),
                            ),
                             Padding(
                              padding: EdgeInsets.only(top: 165.0),
                              child: Center(
                                child: Card(
                                  child: ListTile(
                                    title: Text('Awesome Room',style: TextStyle(fontWeight: FontWeight.bold),),
                                    subtitle: Text('Edapally,Kochi'),
                                    trailing: Wrap(
                                      children: const [
                                        Icon(Icons.star,color: Colors.green,),
                                        Icon(Icons.star,color: Colors.green,),
                                        Icon(Icons.star,color: Colors.green,),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }, childCount: 4))
        ],
      ),
    );
  }
}
