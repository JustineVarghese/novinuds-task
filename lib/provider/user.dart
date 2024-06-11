import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:novindus_task/models/Logindetails.dart';



class LoginProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Login? _login;
  Login? get login => _login;

  Future<void> loginUser(String username, String password) async {
    _isLoading = true;
    notifyListeners();

    final url = 'https://flutter-amr.noviindus.in/api/Login'; 

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'username': username, 'password': password}),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _login = Login.fromJson(data);
      } else {
        // Handle errors here
        throw Exception('Failed to login');
      }
    } catch (error) {
      throw error;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
