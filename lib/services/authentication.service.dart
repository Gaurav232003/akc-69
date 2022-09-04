// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'supabase.credentials.dart';

class AuthenticationService {
  Future sendVerificationCode(
      {required BuildContext context, required String phoneNumber}) async {
    try {
      GotrueSessionResponse response =
          await SupabaseCredentials.supabaseClient.auth.signIn(
              phone: phoneNumber,
              options: AuthOptions(redirectTo: SupabaseCredentials.APIURL));
      if (response.error == null) {
        print(response.data);
      } else {
        print(response.error);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Login Failed : ${response.error!.message}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  Future verifyPhoneNumber(
      {required BuildContext context,
      required String token,
      required String phone}) async {
    try {
      GotrueSessionResponse response =
          await SupabaseCredentials.supabaseClient.auth.verifyOTP(phone, token);
      if (response.error == null) {
        print(response.data);
      } else {
        print(response.error);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Login Failed : ${response.error!.message}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
