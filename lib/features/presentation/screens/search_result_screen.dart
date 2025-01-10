import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search Flights",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            context.go("/home");
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          image: DecorationImage(
            fit: BoxFit.none,
            alignment: Alignment.topCenter,
            image: AssetImage(
              'assets/images/map.png',
            ),
          ),
        ),
        child: Column(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/card.png'),
            Image.asset('assets/images/card.png'),
            Image.asset('assets/images/card.png'),
          ],
        ),
      ),
    );
  }
}
