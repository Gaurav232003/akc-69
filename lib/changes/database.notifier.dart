import 'package:flutter/material.dart';
import 'package:sarv_swasthya/services/database.service.dart';

class DatabaseNotifier extends ChangeNotifier {
  final DatabaseService _databaseService = DatabaseService();
  Future<String?> getNumber(
      {required BuildContext context, required String aadharNumber}) async {
    final response = await _databaseService.getNumber(
        context: context, aadharNumber: aadharNumber);
  }
}
