import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

import '../navDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> adList = ['Ad1', 'Ad2', 'Ad3', 'Ad4', 'Ad5', 'Ad6'];
  final List<String> newsList = [
    'News1',
    'News2',
    'News3',
    'News4',
    'News5',
    'News6'
  ];
  final List<String> channelList = [
    'Channel1',
    'Channel2',
    'Channel3',
    'Channel4',
    'Channel5',
    'Channel6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: retNavDrawer(),
      appBar: AppBar(
        title: Text('VDV'),
        backgroundColor: Color(0xFF573280),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            GFCarousel(
              items: adList.map(
                (ad) {
                  return Card(
                    elevation: 8,
                    margin: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ad,
                        style: TextStyle(fontSize: 120),
                      ),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
              autoPlay: true,
              enlargeMainPage: true,
              pagination: true,
              passiveIndicator: Colors.black,
              activeIndicator: Colors.white,
              pagerSize: 10,
            ),
            SizedBox(
              height: 10,
            ),
            GFCarousel(
              items: newsList.map(
                (news) {
                  return Card(
                    elevation: 8,
                    margin: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        news,
                        style: TextStyle(fontSize: 70),
                      ),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
              autoPlay: true,
              reverse: true,
              enlargeMainPage: true,
              pagination: true,
              passiveIndicator: Colors.black,
              activeIndicator: Colors.white,
              pagerSize: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  radius: 50,
                  child: Text(
                    'S',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text('Shubh Saraswat',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'nunito',
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text('STB No. : 8810312752',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'nunito',
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Next Recharge Date:',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'nunito',
                        )),
                    Text('24/11/19',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'nunito',
                        )),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  width: 0.5,
                  height: 100,
                  color: Colors.black26,
                ),
                Column(
                  children: [
                    Text('Status:',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'nunito',
                        )),
                    Text('Need Recharge!',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'nunito',
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
                elevation: 8,
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                      child: Text('Recharge Now',
                          style: TextStyle(color: Colors.white))),
                )),
            SizedBox(
              height: 20,
            ),
            GFCarousel(
              items: channelList.map(
                (channel) {
                  return Card(
                    elevation: 8,
                    margin: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        channel,
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
              autoPlay: true,
              enlargeMainPage: true,
              pagination: true,
              passiveIndicator: Colors.black,
              activeIndicator: Colors.white,
              pagerSize: 10,
            ),
          ],
        ),
      ),
    );
  }
}
