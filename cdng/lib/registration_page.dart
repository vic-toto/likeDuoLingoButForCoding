import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences pref;
// Define TextEditingController objects
TextEditingController usernameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController languageController = TextEditingController();

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Info ✍🏼',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Favourite Programming Language'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
    saveRegistrationData();
  },

              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}


  void saveRegistrationData() {
    // Get values from text fields
    final username = 'example_username'; // Replace with actual value
    final email = 'example@email.com'; // Replace with actual value
    final password = 'example_password'; // Replace with actual value
    final language = 'example_language'; // Replace with actual value

    // Prepare data to be saved
    final data = {
      'username': username,
      'email': email,
      'password': password,
      'language': language,
    };

    // Convert data to JSON string
    final jsonString = json.encode(data);

    // Save JSON string to shared preferences
    pref.setString('registration_data', jsonString);

    // Optionally, you can show a success message or navigate to the next screen
  }
