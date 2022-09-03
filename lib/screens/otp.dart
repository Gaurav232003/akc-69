import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sarv_swasthya/screens/splash_screens.dart';
import 'homepage.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 31.0, top: 100.0, right: 31.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Confirm OTP Code',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Enter OTP sent from SMS to your AADHAR registered mobile number.',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            SizedBox(
              child: OtpTextField(
                filled: true,
                fillColor: const Color(0xFFD3D3D3),
                numberOfFields: 6,
                borderColor: const Color(0xFFD3D3D3),
                showFieldAsBox: true,
                onSubmit: (String verificationCode) {
                  // printitng the submited otp!
                  print(verificationCode);
                  if (true) {}
                }, // end onSubmit
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Splash'))
          ],
        ),
      ),
    );
  }
}
