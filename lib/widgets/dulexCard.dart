import 'package:flutter/material.dart';

class Dulexcard extends StatelessWidget {
  final String rating;
  final String desc;
  final String location;
  final String amount;
  final String strikamt;
  final String offer;
  final String tax;
  final String imgUrl;

  const Dulexcard(
      {required this.rating,
      required this.desc,
      required this.location,
      required this.amount,
      required this.strikamt,
      required this.offer,
      required this.tax,
      required this.imgUrl,
      super.key});

  @override
  Widget build(BuildContext context) {
    var h2 = MediaQuery.of(context).size.height * 0.22;
    var w2 = MediaQuery.of(context).size.height * 0.34;

    print("helllllllllllllllo${h2} weight ${w2}");
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    '${imgUrl}',
                    height: 150,//h2, //150  manual
                    width: 250,//w2, //250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.diamond, size: 18),
                        SizedBox(width: 5),
                        Text(
                          'Super OYO',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    maxRadius: 14,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.favorite_border_sharp,
                            size: 18,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
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
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.red,
              size: 18,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: '  ${rating}  ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      )),
                  TextSpan(
                      text: ' (288)',
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              '${desc}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Text(
              '${location}',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '₹${amount} ',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 2),
              ),
              TextSpan(
                text: '₹${strikamt} ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    letterSpacing: 1),
              ),
              TextSpan(
                text: '${offer}% OFF',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          '+ ₹${tax} taxes & fees',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 89, 88, 88),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFdafcf8),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '💵 Pay at hotel',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF1a8d7e),
            ),
          ),
        ),
      ],
    );
  }
}
