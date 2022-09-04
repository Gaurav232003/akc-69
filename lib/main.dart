import 'package:flutter/material.dart';
import 'screens/splashScreen.dart';

void main(List<String> args) {
  runApp(const SarvSwasthya());
}

class SarvSwasthya extends StatefulWidget {
  const SarvSwasthya({Key? key}) : super(key: key);

  @override
  State<SarvSwasthya> createState() => _SarvSwasthyaState();
}

class _SarvSwasthyaState extends State<SarvSwasthya> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Proxima Nova'),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
