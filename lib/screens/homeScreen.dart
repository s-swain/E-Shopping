import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

import '../widgets/productRectangle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    {"id" : 1, "image_path" : 'asset/images/1.png'},
    {"id" : 2, "image_path" : 'asset/images/2.png'},
    {"id" : 3, "image_path" : 'asset/images/3.png'},
    {"id" : 4, "image_path" : 'asset/images/4.png'},
    {"id" : 5, "image_path" : 'asset/images/5.png'},
  ];

  final CarouselController carouselController = CarouselController();
  TextEditingController searchController = TextEditingController();
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: (){
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList.map((items) => Image.asset(items['image_path'],fit: BoxFit.cover,width: double.infinity,),).toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 1.5,
                    viewportFraction: 1,
                    onPageChanged: (index, reason){
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry){
                    print(entry);
                    print(entry.key);
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width:  currentIndex == entry.key ? 17:7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key ? Colors.white : Colors.grey,
                        ),
                      ),
                    );
                    }).toList(),
                ),
              ),
              Positioned(
                  top: 40,
                  right: 0,
                  left: 0,
                  child: Row(
                children: [
                  IconButton(onPressed:(){}, icon: const Icon(Icons.menu)),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 30.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.search,color: Colors.grey),
                          const SizedBox(width: 20),
                          SizedBox(
                            height: 30,
                            width: 100,
                            child: TextField(
                              controller: searchController,
                              decoration: const InputDecoration.collapsed(
                                hintText: 'Search',
                                hintTextDirection: TextDirection.ltr,
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  IconButton(onPressed:(){}, icon: const Icon(Icons.qr_code_scanner_sharp)),
                ],
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/images/6.png'),
                      radius: 30,
                    ),
                    Center(
                        child: Text(
                            'Free \n Delivery',
                            textAlign: TextAlign.center))
                  ],
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/images/7.png'),
                      radius: 30,
                    ),
                    Center(
                        child: Text(
                            'Offers & \n Promos',
                            textAlign: TextAlign.center))
                  ],
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/images/8.jpg'),
                      radius: 30,
                    ),
                    Center(
                        child: Text(
                            'Super \n Mart',
                            textAlign: TextAlign.center))
                  ],
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/images/9.png'),
                      radius: 25,
                    ),
                    Center(
                        child: Text(
                            'Daily \n Groceries',
                            textAlign: TextAlign.center))
                  ],
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/images/10.png'),
                      radius: 25,
                    ),
                    Center(
                        child: Text(
                            'Live \n Shows',
                            textAlign: TextAlign.center))
                  ],
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/images/11.png'),
                      radius: 30,
                    ),
                    Center(
                        child: Text(
                            'Antique \n Collection',
                            textAlign: TextAlign.center))
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      Text(
                        'Trending Now',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 150),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    ProductRectangle(imageText: 'asset/images/12.jpg', numberOfPeople: '120.3k', productName: 'T-Shirt'),
                    SizedBox(width: 15),
                    ProductRectangle(imageText: 'asset/images/13.png', numberOfPeople: '203.7k', productName: 'Necklace'),
                    SizedBox(width: 15),
                    ProductRectangle(imageText: 'asset/images/14.jpg', numberOfPeople: '88.3k', productName: 'Fashion\nWallets'),
                  ],
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      Text(
                        'Just For You',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 150),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ProductRectangleWithDescription(imageText: 'asset/images/15.png',description: 'A1 Smartwatch - both\niOS and Android',),
                        SizedBox(width: 15),
                        ProductRectangleWithDescription(imageText: 'asset/images/16.png',description: 'Sike Air Jordan -\nLatest Collection',),
                        SizedBox(width: 15),
                        ProductRectangleWithDescription(imageText: 'asset/images/17.png',description: 'Blue De Chanei - Royal\nPerfume For Men',),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
