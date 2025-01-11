import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}

class _SecuritySettingsState extends State<SecuritySettings> {
  String _selectedLanguage = "Double Verfication";
  bool _isTrustedDevice = false;
  void _showSetTrustedDeviceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Color(0xFFF2F3F6),
          contentPadding: EdgeInsets.all(24.0),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Continue and set device as trusted?',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 16.0),
                Text(
                  'To set a PIN, this device needs to be set as trusted.',
                  style:  Theme.of(context).textTheme.displaySmall,
                ),

              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No, cancel', style:Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isTrustedDevice = true;
                });
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text('Yes, continue',style:Theme.of(context).textTheme.titleSmall?.copyWith(color:Colors.white)),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F6),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          context.go('/settings');
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.only(top: 16,bottom: 24 , left: 16 , right: 16),
              child: Text('Security Settings',style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Credit Card' , style: Theme.of(context).textTheme.bodyLarge,),
                  ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0 , vertical: 0),
                    title: Text('Double Verfication' , style: Theme.of(context).textTheme.bodyLarge,),
                    subtitle: Text('Enter CVV & OTP code for more secure\npayment verification.', style: Theme.of(context).textTheme.displaySmall,),
                      trailing:Radio(
                          splashRadius: 20.0,
                          value: 'Double Verfication',

                          groupValue: _selectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value!;
                            });
                          }
                      )
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xFFEAEAEA),
                  ),
                  ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0 , vertical: 0),
                      title: Text('Single Verification' , style: Theme.of(context).textTheme.bodyLarge,),
                      subtitle: Text('Enter CVV & OTP code for a swift & hassle-\nfree payment verification.', style: Theme.of(context).textTheme.displaySmall,),
                      trailing: Radio(
                          splashRadius: 20.0,
                          value: 'Single Verification',

                          groupValue: _selectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value!;
                            });
                          }
                      )
                  ),
                ],
              ),
            ),
              SizedBox(
                height: 16,
              ),
            ListTile(
              tileColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 16, top: 24,bottom: 24 ),

              title: Text('Biometric' , style: Theme.of(context).textTheme.bodyLarge,),
              subtitle: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Text('Activate Biometric Feature' , style: Theme.of(context).textTheme.bodyLarge,),
                  SizedBox(
                    height: 6,
                  ),
                  Text('To enjoy a seamless log in with fingerprint or\nface recognition.', style: Theme.of(context).textTheme.displaySmall,),
                ],
              ),
              trailing:  Transform.scale(

                scale: 0.7,
                child: Switch(
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Color(0xff0D16340D),
                  trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                    if (states.contains(WidgetState.disabled)) {
                      return null;
                    }
                    return Color(0xff0D16340D);
                  }),
                  value: true,
                  onChanged: (bool value) {},
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ListTile(
              tileColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 16, top: 24,bottom: 24 ),

              title: Text('Device' , style: Theme.of(context).textTheme.bodyLarge,),
              subtitle: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Text('Set Device as Trusted' , style: Theme.of(context).textTheme.bodyLarge,),
                  SizedBox(
                    height: 6,
                  ),
                  Text('Activate to set a Pin and Manage device\nconnectivity.', style: Theme.of(context).textTheme.displaySmall,),
                ],
              ),
              trailing:  Transform.scale(

                scale: 0.7,
                child: Switch(
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Color(0xff0D16340D),
                  trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                    if (states.contains(WidgetState.disabled)) {
                      return null;
                    }
                    return Color(0xff0D16340D);
                  }),
                  value: _isTrustedDevice,
                  onChanged: (bool value) {
                    if (value) {
                      _showSetTrustedDeviceDialog();
                    } else {
                      setState(() {
                        _isTrustedDevice = false;
                      });
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ListTile(
              tileColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 16, top: 24,bottom: 24 ),

              title: Text('Pin' , style: Theme.of(context).textTheme.bodyLarge,),
              subtitle: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Text('Set PIN' , style: Theme.of(context).textTheme.bodyLarge,),
                  SizedBox(
                    height: 6,
                  ),
                  Text('Set a 6 digit vẻification PIN to secure your\naccounts activities.', style: Theme.of(context).textTheme.displaySmall,),
                ],
              ),
              trailing:IconButton(onPressed: (){
                context.go('/set-pin');
              }, icon: Icon(Icons.arrow_forward_ios, color: Color(0xff252831),size: 15,)),
            )
          ],
        ),


      )
    );
  }
}
