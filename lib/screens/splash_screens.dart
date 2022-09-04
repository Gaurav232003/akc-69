import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreens extends StatefulWidget {
  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  var indexCounter = 0;

  //CarouselController buttonCarouselController = CarouselController();

  List<Widget> child1 = [
    const Text('Medical History',
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800)),
    const Text('Find Hospital Beds',
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800)),
    const Text('Health Insurance',
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800))
  ];

  List<Widget> child2 = [
    const Text(
      'Tired of carrying all your files to the doctor\'s visit? Keep all your medical records in one place.',
      style: TextStyle(color: Color(0xFFD3D3D3), fontSize: 20.0),
    ),
    const Text(
      'Check bed availability for your loved ones. Give them the best care they deserve!',
      style: TextStyle(color: Color(0xFFD3D3D3), fontSize: 20.0),
    ),
    const Text(
      'We help you stramline your health insurance process. Get all your claims quick and hassle-free',
      style: TextStyle(color: Color(0xFFD3D3D3), fontSize: 20.0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();
    String imagecounter = 'assets/splash_img$indexCounter.svg';
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 31.0, top: 100.0, right: 31.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sarv Swasthya',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    SvgPicture.asset(
                      'assets/splash_img0.svg',
                      height: height * 0.3,
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    child1[0],
                    SizedBox(
                      height: height * 0.02,
                    ),
                    child2[0],
                    SizedBox(
                      height: height * 0.07,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (indexCounter == 2) {
                            indexCounter = 0;
                          } else
                            indexCounter++;
                        });
                      },
                      child: Icon(
                        Icons.arrow_right_alt,
                        size: height * 0.1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 31.0, top: 100.0, right: 31.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sarv Swasthya',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    SvgPicture.asset(
                      'assets/splash_img1.svg',
                      height: height * 0.3,
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    child1[1],
                    SizedBox(
                      height: height * 0.02,
                    ),
                    child2[1],
                    SizedBox(
                      height: height * 0.07,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (indexCounter == 2) {
                            indexCounter = 0;
                          } else
                            indexCounter++;
                        });
                      },
                      child: Icon(
                        Icons.arrow_right_alt,
                        size: height * 0.1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 31.0, top: 100.0, right: 31.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sarv Swasthya',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    SvgPicture.asset(
                      'assets/splash_img2.svg',
                      height: height * 0.3,
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    child1[2],
                    SizedBox(
                      height: height * 0.02,
                    ),
                    child2[2],
                    SizedBox(
                      height: height * 0.07,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (indexCounter == 2) {
                            indexCounter = 0;
                          } else
                            indexCounter++;
                        });
                      },
                      child: Icon(
                        Icons.arrow_right_alt,
                        size: height * 0.1,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: WormEffect(),
                      onDotClicked: (index) => _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.bounceOut)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
