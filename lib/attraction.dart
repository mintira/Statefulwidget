import 'package:flutter/material.dart';

class Attraction extends StatefulWidget {
  const Attraction({Key? key}) : super(key: key);

  @override
  State<Attraction> createState() => _AttractionState();
}

class _AttractionState extends State<Attraction> {
  int favoriteCount = 40;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Column(
          children: [
            Image.asset('images/lake.jpg'),
            Container(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Kandersteg, Switzerland'),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            like = !like;
                            favoriteCount += like ? 1 : -1;
                          });
                        },
                        icon: Icon(like
                            ? Icons.star_sharp
                            : Icons.star_border_outlined),
                        color: Colors.red,
                      ),
                      Text('$favoriteCount'),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.call_sharp,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'CALLS',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.send_sharp,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ROUTE',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.share_sharp,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: const Text(
                'Oeschinen Lake (German: Oeschinensee) is a lake in the Bernese Oberland, Switzerland, 4 kilometres (2.5 mi) east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres (5,177 ft), it has a surface area of 1.1147 square kilometres (0.4304 sq mi). Its maximum depth is 56 metres (184 ft). The lake was created by a giant landslide and is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
