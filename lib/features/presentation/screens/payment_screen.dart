import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../features.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Digital payment method(s)',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Swipe left to set your default method',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 16),

            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: SvgPicture.asset(
                "assets/icons/paypal.svg",
                width: 32,
                height: 22,
              ),
              title: Text(
                "***8976",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              subtitle: Row(
                spacing: 8,
                children: [
                  SvgPicture.asset("assets/icons/success.svg"),
                  Text("Get 10\$ Discount"),
                ],
              ),
              trailing: Radio(
                value: true,
                groupValue: true,
                onChanged: (value) {},
              ),
            ),
            Divider(
              color: Color(0xffEAEAEA),
              height: 1,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: SvgPicture.asset(
                "assets/icons/master-card.svg",
                width: 32,
                height: 22,
              ),
              title: Text(
                "Paypal",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              subtitle: Row(
                spacing: 8,
                children: [
                  SvgPicture.asset("assets/icons/success.svg"),
                  Text("Get 10\$ Discount"),
                ],
              ),
              trailing: Radio(
                value: false,
                groupValue: true,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Add methods',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            PaymentMethodItem(
              icon: Icons.add_card,
              title: 'Credit or debit card',
              subtitle: 'Visa, Mastercard, AMEX and JCB',
              isAddOption: true,
            ),
            PaymentMethodItem(
              icon: Icons.sync,
              title: 'Transfer',
              subtitle:
                  'Transferring via ATM, Internet Banking & Mobile Banking',
              isAddOption: true,
            ),
            const Spacer(),
            // Subtotal and button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Subtotal',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '\$132',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    useSafeArea: true,
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) => Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 0,
                      ),
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Continue with Touch ID to Proceed the payment",
                            style: Theme.of(context).textTheme.headlineSmall,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                          Image.asset("assets/images/imprint.png"),
                          SizedBox(
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {
                                context.go("/payment-s");
                              },
                              style: FilledButton.styleFrom(
                                backgroundColor: Color(0xffF2F3F6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14.5),
                                child: Text(
                                  "Use Passcode Instead",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                child: const Text('Proceed The Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
