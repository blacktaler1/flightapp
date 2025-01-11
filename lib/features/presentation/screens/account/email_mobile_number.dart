import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';


class EmailMobileNumber extends StatefulWidget {
  const EmailMobileNumber({super.key});

  @override
  State<EmailMobileNumber> createState() => _EmailMobileNumberState();
}

class _EmailMobileNumberState extends State<EmailMobileNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/settings');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email and Mobile Number',style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/icons/success.svg'),
                SizedBox(
                  width: 12,
                ),
                Text('Unverified',style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16 , color: Color(0xffE01E1E)),)
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('+84932870464',style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16 , color: Colors.black),),

                IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/edit.svg')),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    )
                ),
                onPressed: (){},
                child:Text('Enter',style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16 , color: Colors.white),),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text('Email' , style: Theme.of(context).textTheme.bodyLarge,),
            SizedBox(
              height: 6,
            ),
            Text('You will receive  every transcation & security\ninformation on this email.', style: Theme.of(context).textTheme.displaySmall,),
        ],
      ),
      ),
    );

  }
}
