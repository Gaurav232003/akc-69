import 'package:flutter/material.dart';
import 'package:sarv_swasthya/services/supabase.credentials.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DatabaseService {
  Future<String?> getNumber({
    required BuildContext context,
    required String aadharNumber,
  }) async {
    try {
      final response = await SupabaseCredentials.supabaseClient
          .from("users")
          .select("phoneNumber")
          .eq("AADHAR_Number", aadharNumber)
          .execute();
      if (response.error == null) {
        final String data = response.data[0]['phoneNumber'];
        print(data);
        return data;
      } else {
        print(response.error);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Login Failed : ${response.error!.message}")));
        return null;
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
