import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => context.go("/payment-s"),
        ),
        title: Text('Transaction Details'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transaction Details",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Southwest Airlines',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: Color(0xff0D1634),
                              ),
                        ),
                        SizedBox(height: 44),
                        Text(
                          'Executive',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GTH',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Icon(Icons.flight, color: Colors.blue),
                        Text(
                          'KHQ',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '14:00',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '07:15',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          '2 Person • Premium',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 12,
                              ),
                        ),
                        Spacer(),
                        Text(
                          'IDR 350.000/Pax',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey.shade300,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Matt Murdock',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: Color(0XFF0D1634),
                              ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Edit',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status:',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Success",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Color(0xff0064D2),
                      ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Invoice:',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "INV23124131332",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Color(0xff0D1634),
                      ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction Date:',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Wed, 18 Oct 2022",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Color(0xff0D1634),
                      ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method:',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Paytren",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Color(0xff0D1634),
                      ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color.fromARGB(13, 19, 45, 12),
                ),
              ),
              child: Column(
                spacing: 16,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1. Matt Murdock",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      Text(
                        "Rp. 210.000",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.grey,
                            ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      Text(
                        "Rp. 210.000",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Color(0xff0D1634),
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.red.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Refund or Reschedule Ticket'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: FilledButton(
          onPressed: () {
            context.go('/home');
          },
          style: FilledButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text('Enter'),
        ),
      ),
    );
  }
}
