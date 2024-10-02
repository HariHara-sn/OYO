import 'package:flutter/material.dart';

class Blackcontainer extends StatelessWidget {
  final String price;
  const Blackcontainer({required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.network(
                      // 'https://img.freepik.com/free-photo/free-photo-black-grunge-abstract-background-pattern-wallpaper_1340-34114.jpg?t=st=1727705001~exp=1727708601~hmac=2776052e15e6eb42ec4c0d8201a57b791916bf8acc15a2d95a18df864d24ba26&w=996',
                      'https://img.freepik.com/free-vector/stylish-background-with-damask-pattern_1048-1348.jpg?w=740&t=st=1727705065~exp=1727705665~hmac=d25b07aea71e8983df4327e4b2ee0b841987069df3be293448b6bed4511e8e54',
                      height: 210,
                      width: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.person_4_outlined,
                            size: 42,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Starting from',
                          style: TextStyle(color: Colors.white),
                        ),
                        Divider(
                          height: 1.5,
                        ),
                        Text(
                          '₹${price}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          '+ taxes',
                          style: TextStyle(color: Colors.grey),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            // Action when the button is pressed
                          },
                          child: Text(
                            'Explore',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(
                                100, 35), // Set width to 200 and height to 40
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(7)), // Rounded corners
                            ),
                            side: BorderSide(
                              color: Colors.white, // Border color
                              style: BorderStyle.solid,
                              width: 1.0, // Border thickness (bold)
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              // Repeat the second item if necessary
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
