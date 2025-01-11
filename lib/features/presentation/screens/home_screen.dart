import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 0;
  int value1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Flights"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                image: DecorationImage(
                  image: AssetImage("assets/images/map.png"),
                  fit: BoxFit.fill,
                ),
              ),
              width: double.infinity,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Discover a new world",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Colors.white,
                                fontSize: 34,
                                letterSpacing: 2,
                              ),
                    ),
                  ],
                ),
              ),
            ),
            // Form elements
            Transform.translate(
              offset: Offset(0, -30),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    // Trip Type
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: value,
                              onChanged: (valueChanged) {
                                setState(() {
                                  value = valueChanged!;
                                });
                              },
                            ),
                            Text(
                              "One-way",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: Color(0xff22313F),
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: value1,
                              onChanged: (valueChanged) {
                                setState(() {
                                  value1 = valueChanged!;
                                });
                              },
                            ),
                            Text(
                              "Round-trip",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: Color(0xff22313F),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // From input
                    TextField(
                      decoration: InputDecoration(
                        labelText: "From",
                        hintText: "New York, USA",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.flight_takeoff,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "To",
                        hintText: "Da Nang, Vietnam",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.flight_land,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Departure Date",
                        hintText: "August 28, 2021",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.calendar_today,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      readOnly: true,
                      onTap: () {
                        // Show date picker
                      },
                    ),
                    SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        labelText: "Travelers",
                        hintText: "1 Adult, 1 Child, 0 Infant",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Color(0xff22313F)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 8, 235, 235),
                          ),
                        ),
                        prefixIcon: Icon(Icons.person,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Search Button
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {
                          context.go('/search');
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Search flights",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
        selectedLabelStyle: TextStyle(
          color: Color(0xff0D1634),
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
        ),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
