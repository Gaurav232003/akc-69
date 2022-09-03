import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HospitalLogin extends StatefulWidget {
  const HospitalLogin({Key? key}) : super(key: key);

  @override
  State<HospitalLogin> createState() => _HospitalLoginState();
}

class _HospitalLoginState extends State<HospitalLogin> {
  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var img_height = height * 0.35;
    var img_width = width * 0.0351;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 31.0, top: 00.0, right: 31.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: height * 0.018,
              ),
              SvgPicture.asset(
                'assets/hospital_login.svg',
                height: img_height,
                width: img_width,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Hospital Login',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              SizedBox(
                height: height * 0.05,
                child: TextField(
                  controller: myController,
                  autofocus: false,
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: 'Hospital Unique ID',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: width * 0.002,
                          color: Colors.black), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              ElevatedButton(
                onPressed: () {
                  // add task
                },
                child: Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.028,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: width * 0.35,
                    height: height * 0.0015,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.35,
                    height: height * 0.0015,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.028,
              ),
              Center(
                child: InkWell(
                  child: Text(
                    'Login as a user',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ),
              // SizedBox(
              //   height: ,
              // ),
              Center(
                child: SizedBox(
                  width: width * 0.25,
                  height: height * 0.001,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
