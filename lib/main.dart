import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarv_swasthya/changes/app.provider.dart';
import 'changes/authentication.service.dart';
import 'changes/database.notifier.dart';
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
    return MultiProvider(child: Start(), providers: AppProviders.providers);
  }
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
