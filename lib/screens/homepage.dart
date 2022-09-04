import 'package:flutter/material.dart';
import 'package:sarv_swasthya/Services/beds.dart';
import 'package:sarv_swasthya/Services/claimIncurance.dart';
import 'package:sarv_swasthya/Services/emergency.dart';
import 'package:sarv_swasthya/Services/medicalHistory.dart';
import 'package:sarv_swasthya/Services/mentalHealth.dart';
import 'package:sarv_swasthya/Services/vaccine.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cardcounter = 0;
  List child1 = [
    const Text(
      'COVID Boster Dose',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    ),
    const Text(
      'Claim Health Insurance',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    const Text(
      'Mental Health',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    ),
  ];
  List child2 = [
    const Text(
      'Book a dose for yourself.',
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
    Column(
      children: [
        const Text(
          'We help you streamline',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const Text(
          'your health insurance process.',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    ),
    const Text(
      'Let us find you therapists.',
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
  ];
  List child3 = [
    const InkWell(
      child: Text(
        '22 Centers Near You',
        style: TextStyle(
            color: Colors.lightBlueAccent, fontWeight: FontWeight.w500),
      ),
    ),
    const InkWell(
      child: Text(
        '',
        style: TextStyle(
            color: Colors.lightBlueAccent, fontWeight: FontWeight.w500),
      ),
    ),
    const InkWell(
      child: Text(
        '2 Centers Near You',
        style: TextStyle(
            color: Colors.lightBlueAccent, fontWeight: FontWeight.w500),
      ),
    )
  ];
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 31.0, top: 30.0, right: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Namaste, User!',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     child1[cardcounter],
                  //     SizedBox(
                  //       height: height * 0.02,
                  //     ),
                  //     child2[cardcounter],
                  //     SizedBox(height: height * 0.03),
                  //     child3[cardcounter],
                  //   ],
                  // ),
                  Image.asset(
                    'assets/card$cardcounter.png',
                    height: height * 0.2,
                    width: width * 0.75,
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  GestureDetector(
                    child: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      setState(() {
                        if (cardcounter == 2) {
                          cardcounter = 0;
                        } else {
                          cardcounter++;
                        }
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),
              ReusableCard(
                colour: Colors.white,
                cardChild: Container(
                  margin: EdgeInsets.only(left: 15, top: 5),
                  height: height * 0.3,
                  width: width * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Services',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            GestureDetector(
                              child: Image.asset(
                                'assets/Services_4.png',
                                height: height * 0.09,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MedicalHistory()));
                              },
                            ),
                          ]),
                          Column(children: [
                            GestureDetector(
                              child: Image.asset(
                                'assets/Services_5.png',
                                height: height * 0.09,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Insurance()));
                              },
                            ),
                          ]),
                          Column(children: [
                            GestureDetector(
                              child: Image.asset(
                                'assets/Services_6.png',
                                height: height * 0.09,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Beds()));
                              },
                            ),
                          ]),
                          SizedBox()
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            GestureDetector(
                              child: Image.asset(
                                'assets/Services_1.png',
                                height: height * 0.09,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MenatalHealth()));
                              },
                            ),
                          ]),
                          Column(children: [
                            GestureDetector(
                              child: Image.asset(
                                'assets/Services_3.png',
                                height: height * 0.09,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Vaccine()));
                              },
                            ),
                          ]),
                          Column(children: [
                            GestureDetector(
                              child: Image.asset(
                                'assets/Services_2.png',
                                height: height * 0.09,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Emergency()));
                              },
                            ),
                          ]),
                          SizedBox()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              ReusableCard(
                  colour: Colors.white,
                  cardChild: Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      top: 15,
                    ),
                    height: height * 0.2,
                    width: width * 0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'COVID Vaccine Tracker',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('First Dose      '),
                                Text('Covisheild'),
                                Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                Text('14/05/21')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Second Dose'),
                                Text('Covisheild'),
                                Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                Text('14/05/21'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Booster Dose'),
                                Text('Covisheild'),
                                Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                                Text('14/05/21')
                              ],
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    child: Text(
                                      'Book your booster slot now!                           ',
                                    ),
                                  )
                                ])
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.only(left: 0, right: 0, top: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
