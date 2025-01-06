import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Start Your Journey with affordable price',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Your Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Sign in', style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 16),
            Center(
                child: Text('Or Sign Up With',
                    style: TextStyle(color: Colors.grey))),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/0/0b/Google_Logo.svg'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg'),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Already have an account? Sign In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
