import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.blueGrey),
            useInheritedMediaQuery: true,
            home: const FarmerZone(),
            debugShowCheckedModeBanner: false,
          )));
}

class FarmerZone extends StatefulWidget {
  const FarmerZone({Key? key}) : super(key: key);

  @override
  State<FarmerZone> createState() => _FarmerZoneState();
}

class _FarmerZoneState extends State<FarmerZone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          //scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              floating: false,
              pinned: true,
              elevation: 0,
              title: const Text(
                'FARMERS FRESH ZONE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 4, top: 25),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.location_on_rounded,
                        size: 20,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      bottom: 8.0, top: 35, left: 0, right: 25.0),
                  child: Text(
                    'KOCHI',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
              ],
              bottom: AppBar(
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: double.infinity,
                  height: 40,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for fruits and vegetables..',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Colors.pinkAccent,
                        )),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 6,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue)),
                      child: const Center(
                          child: Text(
                        'FRUITS',
                        style: TextStyle(color: Colors.blue),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue)),
                      child: const Center(
                          child: Text(
                        'VEGETABLES',
                        style: TextStyle(color: Colors.blue),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue)),
                      child: const Center(
                          child: Text(
                        'EXOTIC',
                        style: TextStyle(color: Colors.blue),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue)),
                      child: const Center(
                          child: Text(
                        'BEVERAGES',
                        style: TextStyle(color: Colors.blue),
                      )),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                  items: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/Images/GourmetGrocery_750x375.gif'))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/Images/Tea_Coffee_Header_750x375._CB1198675309_.jpg'))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/Images/nescafe.jpg'))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image:
                                  AssetImage('assets/Images/superfood.jpg'))),
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: .9,
                      height: 180,
                      //MediaQuery.of(context).size.height,
                      enlargeCenterPage: true,
                      autoPlayCurve: Curves.linear,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      enableInfiniteScroll: true,
                      pauseAutoPlayOnManualNavigate: true)),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            FontAwesomeIcons.stopwatch,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('30 MINS POLICY')
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('TRACEBILITY')
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            FontAwesomeIcons.sourcetree,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('LOCAL SOURCING')
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ])),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8, top: 20),
                child: Text(
                  'SHOP BY CATEGORY',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FarmersGrid(),
              SliverToBoxAdapter(
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/Images/chocolate.jpg',),fit: BoxFit.contain),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/Images/chocolate.jpg',),fit: BoxFit.contain),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              )
            ]))
          ],
        ),
        bottomNavigationBar: const GNav(
            color: Colors.green,
            activeColor: Colors.blueGrey,
            rippleColor: Colors.teal,
            hoverColor: Colors.orange,
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Cart',
              ),
              GButton(
                icon: Icons.account_box_sharp,
                text: 'Account',
              ),
            ]));
  }
}

class FarmersGrid extends StatelessWidget {
  List<String> images = [
    'assets/Images/veggie.jpg',
    'assets/Images/fruits_detailfeature.jpg',
    'assets/Images/juice.jpg',
    'assets/Images/Nut.jpg',
    'assets/Images/exotic-fruits-3-725x483.jpg',
    'assets/Images/meat02.jpg',
    'assets/Images/veggie.jpg',
    'assets/Images/fruits_detailfeature.jpg',
    'assets/Images/juice.jpg',
  ];
  List<String> names = [
    'VEGETABLES',
    'FRUITS',
    'FRESH DRINKS',
    'NUTS',
    'EXOTIC FRUITS',
    'MEAT',
    'NUTS',
    'EXOTIC FRUITS',
    'MEAT'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 9,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(child: Text(names[index]))
            ],
          );
        });
  }
}
