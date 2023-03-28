import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: HotelDetails(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class HotelDetails extends StatefulWidget {
  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: ConvexAppBar(
        height: 50,
        initialActiveIndex: 2,
        backgroundColor: Colors.black,
        activeColor: Colors.purple,
        items: const [
          TabItem(icon: Icons.key, title: 'Bookings'),
          TabItem(icon: Icons.local_offer_rounded, title: 'Offers'),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.people_alt_outlined, title: 'Invite'),
          TabItem(icon: Icons.live_help_outlined, title: 'Need Help'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/Images/ameer-basheer-s03YaiW2Q9U-unsplash06.jpg',
                  fit: BoxFit.contain,
                ),
                ListTile(
                  isThreeLine: true,
                  trailing: Wrap(
                    direction:Axis.vertical,
                    children:const [
                      Text(
                      'Rs.25000',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                      Text(
                        'Per Night',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                        ),
                      ),]
                  ),
                  title: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
                            child: Text('8.5/90 reviews',style: TextStyle(color: Colors.white,fontSize: 15),)),
                      )
                      // ListTile(
                      //   title: Text(
                      //     '15000Rs',
                      //     style: TextStyle(fontSize: 15, color: Colors.purple),
                      //   ),
                      // )
                    ],
                  ),
                  subtitle: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        '1km from Lulumall',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    fixedSize: const Size(330,50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    backgroundColor: Colors.purple
                  ),
                      onPressed: (){}, child: const Text('Book Now')),
                ),
                const ListTile(
                    title: Text(
                      'MARRIOTT HOTEL',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    isThreeLine: true,
                    subtitle: Text(
                      'Discover modern elegance at Kochi Marriott Hotel in Kerala, India. Located in the city center'
                      ' of this growing metropolis and part of the LuLu International Shopping Mall, our 5-star hotel offers'
                      ' refined comfort for every traveler. Relax in our stylish hotel rooms and suites, '
                      'each with upscale amenities and 24-hour room service.'
                      ' Savor delicious international cuisine in our restaurants and lounges,'
                      ' get pampered at our spa, go for a swim in our outdoor pool, or work out in our 24-hour fitness'
                      ' center. Our expansive venues offer a sophisticated backdrop for meetings, social events and weddings, each complemented by our world-class catering and services. ',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          const Positioned(
            top: 300,
            left: 10,
            child: Text(
              'Marriott',
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 330,
            left: 10,
            child: Text(
              'Edapally, Kochi',
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
