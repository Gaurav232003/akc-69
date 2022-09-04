import 'package:flutter/material.dart';
import 'package:sarv_swasthya/screens/homepage.dart';

class Beds extends StatefulWidget {
  const Beds({super.key});

  @override
  State<Beds> createState() => _BedsState();
}

class _BedsState extends State<Beds> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.photo))],
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Navigation Drawer',
        ),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 31.0, top: 30.0, right: 31.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bed Availability',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
                'Find the hospital beds near you for emergency and give yourself or your loved ones the best care.'),
            SizedBox(
              height: height * 0.05,
            ),
            ReusableCard(
                colour: Colors.white,
                cardChild: Container(
                  margin: EdgeInsets.only(left: 20.0, top: 20, right: 10.0),
                  height: height * 0.2,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Live Bed Tracker',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height * 0.009,
                      ),
                      InkWell(
                        onTap: () {
                          // Location update
                        },
                        child: Row(children: [
                          Icon(Icons.gps_fixed_rounded),
                          Text('Update Location'),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.009,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hospital',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Distance',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Beds',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Contact',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'SRM Hospital',
                              ),
                              Text('10 Km'),
                              Text('14'),
                              Text('011-69691'),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Apollo Potheri'),
                              Text('25 Km'),
                              Text('17'),
                              Text('011-121212'),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Medica Health'),
                              Text('140Km'),
                              Text('10'),
                              Text('011-123421'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
