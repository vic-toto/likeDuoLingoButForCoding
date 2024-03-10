import 'package:flutter/material.dart';
import 'registration_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to CDNG'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your logo image
            Image.asset(
              'assets/logo.png', // Replace 'your_logo.png' with your logo file name
              width: 150, // Adjust the width as needed
            ),
            SizedBox(height: 30),
            // Welcome text
            Text(
              'Did you feed your mind today?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Register button
            ElevatedButton(
              onPressed: () {
                // Navigate to the registration page when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text('Register'),
            ),
            SizedBox(height: 10),
            // Login button
            OutlinedButton(
              onPressed: () {
                // Navigate to the login page
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}