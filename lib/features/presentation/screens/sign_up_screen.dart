import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

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
            context.go('/sign-in');
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
              style: TextTheme.of(context).displayLarge,
            ),
            SizedBox(height: 8),
            Text(
              'Start Your Journey with affordable price',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Color(0xff808080),
                  ),
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
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  Text(
                    'Sign in',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  Icon(
                    CupertinoIcons.check_mark_circled,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(
                child: Text('Or Sign Up With',
                    style: TextStyle(color: Colors.grey))),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF2F3F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset('assets/icons/facebook.svg'),
                      iconSize: 24,
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF2F3F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset('assets/icons/google.svg'),
                      iconSize: 24,
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF2F3F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset('assets/icons/apple.svg'),
                      iconSize: 24,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  context.go("/sign-in");
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
