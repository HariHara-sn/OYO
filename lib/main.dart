library;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oyo/floationgbtnMustimplemt.dart';
import 'package:oyo/widgets/blackContainer.dart';
import 'package:oyo/widgets/dulexCard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Scaffold(
        drawer: Drawer(),
        body: LocationPickerScreen(),
      ),
    );
  }
}

class LocationPickerScreen extends StatelessWidget {
  const LocationPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height * 0.22; // or 200 manual
    print("h111111111ss$h1");
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            iconTheme: const IconThemeData(
              size: 30,
            ),
            expandedHeight: h1, //h1, // 200 manual
            floating: false,
            pinned: true,
            // backgroundColor: const Color.fromARGB(255, 174, 212, 243),
            backgroundColor: Colors.white,
            toolbarHeight: 110,
            titleSpacing: 0,

            title: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  // padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.only(left: 0, right: 16),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(
                            159, 233, 227, 227), // Gray background color
                        filled:
                            true, // Fill the TextField with the background color
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Bangalore',
                        hintStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),

                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(width: 10),
                ),
              ],
            ),

            // leading: const Icon(Icons.menu),
            // actions: const [
            //   Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Icon(Icons.notifications),
            //   ),
            // ],
            flexibleSpace: const FlexibleSpaceBar(
              // title: Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: TextField(
              //           decoration: InputDecoration(
              //             prefixIcon: const Icon(Icons.search),
              //             hintText: 'Bangalore',
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(30.0),
              //             ),
              //           ),
              //         ),
              //       ),
              //       const SizedBox(width: 10),
              //       const Icon(Icons.person, size: 30),
              //     ],
              //   ),
              // ),
              background: Column(
                children: [
                  SizedBox(height: 140), // Spacer before the location images
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FloatingBubbleButton(
                          imgurl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB85xcQt2gXz9-dXDTif7_WWd4Ac5JKQ-QFQ&s',
                          imgname: 'Nearby',
                        ),
                        FloatingBubbleButton(
                            imgurl:
                                'https://www.godrej-ananda.net.in/images/other/how-bangalore-got-its-name.webp',
                            imgname: 'Bangalore'),
                        FloatingBubbleButton(
                            imgurl:
                                'https://vj-prod-website-cms.s3.ap-southeast-1.amazonaws.com/1765681589chennai-1696645169332.jpg',
                            imgname: 'Chennai'),
                        FloatingBubbleButton(
                            imgurl:
                                'https://img.freepik.com/premium-photo/beautiful-canadian-girl-white-sweater_146105-51212.jpg',
                            imgname: 'Canada'),
                        FloatingBubbleButton(
                            imgurl:
                                'https://www.kalitravel.net/blog/delhi-itinerary/',
                            imgname: 'Delhi'),
                        FloatingBubbleButton(
                            imgurl:
                                'https://savemax.in/blogs/wp-content/uploads/2024/02/Tallest-Buildings-in-gurgaon.jpg',
                            imgname: 'Vagamon'),
                      ],
                    ),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                  )
                ],
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quick Picks Section
            const Text('Quick picks for you',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
            const SizedBox(height: 18),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  custBtnWidgetHari('Recommended'),
                  const SizedBox(width: 10),
                  custBtnWidgetHari('Recently Viewed'),
                  const SizedBox(width: 10),
                  custBtnWidgetHari('Company-Services'),
                ],
              ),
            ),

            const SizedBox(height: 25),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Dulexcard(
                    rating: '4.3',
                    desc: 'Super Collection O Royal Mac',
                    location: 'Bangalore, Bangalore',
                    amount: '961',
                    strikamt: '3691',
                    offer: '70',
                    tax: '232',
                    imgUrl:
                        'https://images.oyoroomscdn.com/uploads/hotel_image/80871/large/vcsgubeqbirn.jpg',
                  ),
                  Dulexcard(
                    rating: '2.5',
                    desc: 'Super Dulex OAK Royal Mac',
                    location: 'T.Nagar, Chennai',
                    amount: '800',
                    strikamt: '5000',
                    offer: '79',
                    tax: '210',
                    imgUrl:
                        'https://images.oyoroomscdn.com/uploads/hotel_image/107579/large/vshwwsktctnq.jpg',
                  ),
                  Dulexcard(
                    rating: '4.9',
                    desc: 'Super TownHouse OAK Royal Mac',
                    location: 'Viniyanagar, Bangalore',
                    amount: '677',
                    strikamt: '3785',
                    offer: '59',
                    tax: '164',
                    imgUrl:
                        'https://images.oyoroomscdn.com/uploads/hotel_image/80871/nmhrcusjlkem.jpg',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            const Text('OYO Serviced permium hotels',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                //blackCard
                Blackcontainer(price: '999'),
                Blackcontainer(price: '1199'),
                Blackcontainer(price: '1499'),
                Blackcontainer(price: '1500'),
              ]),
            ),

            const Text('Countinue Your Search !',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            const SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(left: 9),
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      width: 190,
                      height: 75,
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.blueAccent),
                      //     borderRadius: BorderRadius.circular(10),
                      // ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bangalore',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text('Today - Tomorrow'),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.blueAccent,
                              shadows: [
                                Shadow(
                                  color: Colors.blue,
                                  blurRadius: 7,
                                  offset: Offset(5, 3),
                                )
                              ],
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //2nd container
                    const SizedBox(
                      width: 17,
                    ),
                    Container(
                      width: 190,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(5, 0),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Saravanampatty',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text('Today - Tomorrow'),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.blueAccent,
                              size: 20,
                              shadows: [
                                Shadow(
                                  color: Colors.blue,
                                  blurRadius: 7,
                                  offset: Offset(5, 3),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            )
            // List content
            // Expanded(
            //   child: ListView(
            //     children: [
            //       for (int i = 0; i <= 20; i++)
            //         Column(children: [
            //           Container(
            //             width: double.infinity,
            //             height: 50,
            //             color: const Color.fromARGB(255, 154, 200, 156),
            //           ),
            //           const SizedBox(
            //             height: 50,
            //           ),
            //           Container(
            //             width: double.infinity,
            //             height: 50,
            //             color: Colors.yellow,
            //           ),
            //         ]),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // Helper Method for Quick Pick Buttons
  Widget custBtnWidgetHari(String label) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(180, 30),
        shadowColor: const Color.fromARGB(255, 242, 149, 149),
        overlayColor: const Color.fromARGB(255, 242, 149, 149),
        padding: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: const BorderSide(
          color: Colors.black87, // Set border color to dark black
          width: 2, // Set the width of the border
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
        ),
      ),
    );
  }
}
