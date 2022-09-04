// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../services/authentication.service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<String?> sendVerificationCode(
      {required BuildContext context, required String phoneNumber}) async {
    try {
      await _authenticationService.sendVerificationCode(
          context: context, phoneNumber: phoneNumber);
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<String?> verifyPhoneNumber(
      {required BuildContext context,
      required String token,
      required String phoneNumber}) async {
    try {
      await _authenticationService.verifyPhoneNumber(
          context: context, token: token, phone: phoneNumber);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
